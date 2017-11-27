require 'matrix'

class SurveysController < ApplicationController

    # called from index
	def new
		@survey=Survey.new
	end

    # redirects to Thank You page
	def thank
        @f = ($global_f * 100).round(2)
        @r = ($global_r * 100).round(2)
        @p = ($global_p * 100).round(2)
        @o = ($global_o * 100).round(2)
        @s = ($global_s * 100).round(2)
        @c = ($global_c * 100).round(2)
        @m = ($global_m * 100).round(2)
        @t = ($global_t * 100).round(2)
        @user_type = $global_user_type

        if (@user_type == 'user')
            @result = Survey.where("user_type = 'user'")
        elsif (@user_type == 'developer')
            @result = Survey.where("user_type = 'developer'")
        end

        f_sum = 0.0
        r_sum = 0.0
        p_sum = 0.0
        o_sum = 0.0
        s_sum = 0.0
        c_sum = 0.0
        m_sum = 0.0
        t_sum = 0.0

        for x in 0..(@result.size-1)
            f_sum = f_sum + @result[x].f_weight
            r_sum = r_sum + @result[x].r_weight
            p_sum = p_sum + @result[x].p_weight
            o_sum = o_sum + @result[x].o_weight
            s_sum = s_sum + @result[x].s_weight
            c_sum = c_sum + @result[x].c_weight
            m_sum = m_sum + @result[x].m_weight
            t_sum = t_sum + @result[x].t_weight
        end

        @f_ave = ((f_sum / @result.size) * 100).round(2)
        @r_ave = ((r_sum / @result.size) * 100).round(2)
        @p_ave = ((p_sum / @result.size) * 100).round(2)
        @o_ave = ((o_sum / @result.size) * 100).round(2)
        @s_ave = ((s_sum / @result.size) * 100).round(2)
        @c_ave = ((c_sum / @result.size) * 100).round(2)
        @m_ave = ((m_sum / @result.size) * 100).round(2)
        @t_ave = ((t_sum / @result.size) * 100).round(2)


	end

    # called when the Submit button is clicked
	def create
		@survey=Survey.new(survey_params)

   		if @survey.save
     	  flash[:notice]="Thank you for answering this survey!"
     	  flash[:color]="valid"


            # compute for weights of the quality characteristics

            if (@survey.fr >= 5)
                @survey.fr = @survey.fr - 4
            else
                @survey.fr = 1 / (@survey.fr - 6).abs
            end

            if (@survey.fp >= 5)
                @survey.fp = @survey.fp - 4
            else
                @survey.fp = 1 / (@survey.fp - 6).abs
            end

            if (@survey.fo >= 5)
                @survey.fo = @survey.fo - 4
            else
                @survey.fo = 1 / (@survey.fo - 6).abs
            end

            if (@survey.fs >= 5)
                @survey.fs = @survey.fs - 4
            else
                @survey.fs = 1 / (@survey.fs - 6).abs
            end

            if (@survey.fc >= 5)
                @survey.fc = @survey.fc - 4
            else
                @survey.fc = 1 / (@survey.fc - 6).abs
            end

            if (@survey.fm >= 5)
                @survey.fm = @survey.fm - 4
            else
                @survey.fm = 1 / (@survey.fm - 6).abs
            end

            if (@survey.ft >= 5)
                @survey.ft = @survey.ft - 4
            else
                @survey.ft = 1 / (@survey.ft - 6).abs
            end


            if (@survey.rp >= 5)
                @survey.rp = @survey.rp - 4
            else
                @survey.rp = 1 / (@survey.rp - 6).abs
            end

            if (@survey.ro >= 5)
                @survey.ro = @survey.ro - 4
            else
                @survey.ro = 1 / (@survey.ro - 6).abs
            end

            if (@survey.rs >= 5)
                @survey.rs = @survey.rs - 4
            else
                @survey.rs = 1 / (@survey.rs - 6).abs
            end

            if (@survey.rc >= 5)
                @survey.rc = @survey.rc - 4
            else
                @survey.rc = 1 / (@survey.rc - 6).abs
            end

            if (@survey.rm >= 5)
                @survey.rm = @survey.rm - 4
            else
                @survey.rm = 1 / (@survey.rm - 6).abs
            end

            if (@survey.rt >= 5)
                @survey.rt = @survey.rt - 4
            else
                @survey.rt = 1 / (@survey.rt - 6).abs
            end


            if (@survey.po >= 5)
                @survey.po = @survey.po - 4
            else
                @survey.po = 1 / (@survey.po - 6).abs
            end

            if (@survey.ps >= 5)
                @survey.ps = @survey.ps - 4
            else
                @survey.ps = 1 / (@survey.ps - 6).abs
            end

            if (@survey.pc >= 5)
                @survey.pc = @survey.pc - 4
            else
                @survey.pc = 1 / (@survey.pc - 6).abs
            end

            if (@survey.pm >= 5)
                @survey.pm = @survey.pm - 4
            else
                @survey.pm = 1 / (@survey.pm - 6).abs
            end

            if (@survey.pt >= 5)
                @survey.pt = @survey.pt - 4
            else
                @survey.pt = 1 / (@survey.pt - 6).abs
            end


            if (@survey.os >= 5)
                @survey.os = @survey.os - 4
            else
                @survey.os = 1 / (@survey.os - 6).abs
            end

            if (@survey.oc >= 5)
                @survey.oc = @survey.oc - 4
            else
                @survey.oc = 1 / (@survey.oc - 6).abs
            end

            if (@survey.om >= 5)
                @survey.om = @survey.om - 4
            else
                @survey.om = 1 / (@survey.om - 6).abs
            end

            if (@survey.ot >= 5)
                @survey.ot = @survey.ot - 4
            else
                @survey.ot = 1 / (@survey.ot - 6).abs
            end


            if (@survey.sc >= 5)
                @survey.sc = @survey.sc - 4
            else
                @survey.sc = 1 / (@survey.sc - 6).abs
            end

            if (@survey.sm >= 5)
                @survey.sm = @survey.sm - 4
            else
                @survey.sm = 1 / (@survey.sm - 6).abs
            end

            if (@survey.st >= 5)
                @survey.st = @survey.st - 4
            else
                @survey.st = 1 / (@survey.st - 6).abs
            end


            if (@survey.cm >= 5)
                @survey.cm = @survey.cm - 4
            else
                @survey.cm = 1 / (@survey.cm - 6).abs
            end

            if (@survey.ct >= 5)
                @survey.ct = @survey.ct - 4
            else
                @survey.ct = 1 / (@survey.ct - 6).abs
            end


            if (@survey.mt >= 5)
                @survey.mt = @survey.mt - 4
            else
                @survey.mt = 1 / (@survey.mt - 6).abs
            end


            # save to matrix the values from the form
            matrix1 = Matrix[
                [1, @survey.fr, @survey.fp, @survey.fo, @survey.fs, @survey.fc, @survey.fm, @survey.ft],
                [1.0/@survey.fr, 1, @survey.rp, @survey.ro, @survey.rs, @survey.rc, @survey.rm, @survey.rt],
                [1.0/@survey.fp, 1.0/@survey.rp, 1, @survey.po, @survey.ps, @survey.pc, @survey.pm, @survey.pt],
                [1.0/@survey.fo, 1.0/@survey.ro, 1.0/@survey.po, 1, @survey.os, @survey.oc, @survey.om, @survey.ot],
                [1.0/@survey.fs, 1.0/@survey.rs, 1.0/@survey.ps, 1.0/@survey.os, 1, @survey.sc, @survey.sm, @survey.st],
                [1.0/@survey.fc, 1.0/@survey.rc, 1.0/@survey.pc, 1.0/@survey.oc, 1.0/@survey.sc, 1, @survey.cm, @survey.ct],
                [1.0/@survey.fm, 1.0/@survey.rm, 1.0/@survey.pm, 1.0/@survey.om, 1.0/@survey.sm, 1.0/@survey.cm, 1, @survey.mt],
                [1.0/@survey.ft, 1.0/@survey.rt, 1.0/@survey.pt, 1.0/@survey.ot, 1.0/@survey.st, 1.0/@survey.ct, 1.0/@survey.mt, 1]
            ]

            ei_matrix = Matrix::EigenvalueDecomposition.new(matrix1)
            ei_values = ei_matrix.eigenvalues()
            ei_vectors = ei_matrix.eigenvectors()

            # If the eigenvalue is a complex number, change it to a -100
            for i in 0..(ei_values.size-1)
                if ei_values[i].class == Complex
                    ei_values[i] = -100
                end
            end

            # get the largest eigenvalue
            largest_ei_index = ei_values.rindex(ei_values.max)

            # solve for the normalize weight vector
            not_normalized = ei_vectors[largest_ei_index]

            # get the sum of the value in the not_normalized weights vector
            sum = 0.0
            for x in not_normalized
                sum = sum + x
            end
            normalized = not_normalized / sum
            # normalized = not_normalized.normalize

            # assign the computed weights to the params for database
            @survey.f_weight = normalized[0].abs
            @survey.r_weight = normalized[1].abs
            @survey.p_weight = normalized[2].abs
            @survey.o_weight = normalized[3].abs
            @survey.s_weight = normalized[4].abs
            @survey.c_weight = normalized[5].abs
            @survey.m_weight = normalized[6].abs
            @survey.t_weight = normalized[7].abs

            $global_f = @survey.f_weight
            $global_r = @survey.r_weight
            $global_p = @survey.p_weight
            $global_o = @survey.o_weight
            $global_s = @survey.s_weight
            $global_c = @survey.c_weight
            $global_m = @survey.m_weight
            $global_t = @survey.t_weight
            $global_user_type = @survey.user_type

            @survey.save

            redirect_to :action => 'thank'
    	else
     	  flash[:notice]="Please answer all fields."
     	  flash[:color]="invalid"
        render :new
    	end	
	end 

	private
    def survey_params
        params.require(:survey).permit(:name,:user_type,:fr,:fp,:fo,:fs,:fc,:fm,:ft,:rp,:ro,:rs,:rc,:rm,:rt,:po,:ps,:pc,:pm,:pt,:os,:oc,:om,:ot,:sc,:sm,:st,:cm,:ct,:mt,:f_weight,:r_weight,:p_weight,:o_weight,:s_weight,:c_weight,:m_weight,:t_weight)
    end

end
