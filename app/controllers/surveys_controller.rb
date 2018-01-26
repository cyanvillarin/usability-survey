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

        for x in 0..(@result.size-1)
            f_sum = f_sum + @result[x].f_weight
            r_sum = r_sum + @result[x].r_weight
            p_sum = p_sum + @result[x].p_weight
            o_sum = o_sum + @result[x].o_weight
            s_sum = s_sum + @result[x].s_weight
            c_sum = c_sum + @result[x].c_weight
        end

        @f_ave = ((f_sum / @result.size) * 100).round(2)
        @r_ave = ((r_sum / @result.size) * 100).round(2)
        @p_ave = ((p_sum / @result.size) * 100).round(2)
        @o_ave = ((o_sum / @result.size) * 100).round(2)
        @s_ave = ((s_sum / @result.size) * 100).round(2)
        @c_ave = ((c_sum / @result.size) * 100).round(2)


	end

    # called when the Submit button is clicked
	def create
		@survey=Survey.new(survey_params)

   		if @survey.save
     	  flash[:notice]="Thank you for answering this survey!"
     	  flash[:color]="valid"


            # compute for weights of the quality characteristics

            if (@survey.ar_l >= 5)
                @survey.ar_l = @survey.ar_l - 4
            else
                @survey.ar_l = 1 / (@survey.ar_l - 6).abs
            end

            if (@survey.ar_o >= 5)
                @survey.ar_o = @survey.ar_o - 4
            else
                @survey.ar_o = 1 / (@survey.ar_o - 6).abs
            end

            if (@survey.ar_uep >= 5)
                @survey.ar_uep = @survey.ar_uep - 4
            else
                @survey.ar_uep = 1 / (@survey.ar_uep - 6).abs
            end

            if (@survey.ar_uia >= 5)
                @survey.ar_uia = @survey.ar_uia - 4
            else
                @survey.ar_uia = 1 / (@survey.ar_uia - 6).abs
            end

            if (@survey.ar_a >= 5)
                @survey.ar_a = @survey.ar_a - 4
            else
                @survey.ar_a = 1 / (@survey.ar_a - 6).abs
            end



            if (@survey.l_o >= 5)
                @survey.l_o = @survey.l_o - 4
            else
                @survey.l_o = 1 / (@survey.l_o - 6).abs
            end

            if (@survey.l_uep >= 5)
                @survey.l_uep = @survey.l_uep - 4
            else
                @survey.l_uep = 1 / (@survey.l_uep - 6).abs
            end

            if (@survey.l_uia >= 5)
                @survey.l_uia = @survey.l_uia - 4
            else
                @survey.l_uia = 1 / (@survey.l_uia - 6).abs
            end

            if (@survey.l_a >= 5)
                @survey.l_a = @survey.l_a - 4
            else
                @survey.l_a = 1 / (@survey.l_a - 6).abs
            end


            if (@survey.o_uep >= 5)
                @survey.o_uep = @survey.o_uep - 4
            else
                @survey.o_uep = 1 / (@survey.o_uep - 6).abs
            end

            if (@survey.o_uia >= 5)
                @survey.o_uia = @survey.o_uia - 4
            else
                @survey.o_uia = 1 / (@survey.o_uia - 6).abs
            end

            if (@survey.o_a >= 5)
                @survey.o_a = @survey.o_a - 4
            else
                @survey.o_a = 1 / (@survey.o_a - 6).abs
            end



            if (@survey.uep_uia >= 5)
                @survey.uep_uia = @survey.uep_uia - 4
            else
                @survey.uep_uia = 1 / (@survey.uep_uia - 6).abs
            end

            if (@survey.uep_a >= 5)
                @survey.uep_a = @survey.uep_a - 4
            else
                @survey.uep_a = 1 / (@survey.uep_a - 6).abs
            end



            if (@survey.uia_a >= 5)
                @survey.uia_a = @survey.uia_a - 4
            else
                @survey.uia_a = 1 / (@survey.uia_a - 6).abs
            end


            # save to matrix the values from the form
            matrix1 = Matrix[
                [1, @survey.ar_l, @survey.ar_o, @survey.ar_uep, @survey.ar_uia, @survey.ar_a],
                [1.0/@survey.ar_l, 1, @survey.l_o, @survey.l_uep, @survey.l_uia, @survey.l_a],
                [1.0/@survey.ar_o, 1.0/@survey.l_o, 1, @survey.o_uep, @survey.o_uia, @survey.o_a],
                [1.0/@survey.ar_uep, 1.0/@survey.l_uep, 1.0/@survey.o_uep, 1, @survey.uep_uia, @survey.uep_a],
                [1.0/@survey.ar_uia, 1.0/@survey.l_uia, 1.0/@survey.o_uia, 1.0/@survey.uep_uia, 1, @survey.uia_a],
                [1.0/@survey.ar_a, 1.0/@survey.l_a, 1.0/@survey.o_a, 1.0/@survey.uep_a, 1.0/@survey.uia_a, 1]
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

            $global_f = @survey.f_weight
            $global_r = @survey.r_weight
            $global_p = @survey.p_weight
            $global_o = @survey.o_weight
            $global_s = @survey.s_weight
            $global_c = @survey.c_weight
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
        params.require(:survey).permit(:name,:user_type,:ar_l,:ar_o,:ar_uep,:ar_uia,:ar_a,:l_o,:l_uep,:l_uia,:l_a,:o_uep,:o_uia,:o_a,:uep_uia,:uep_a,:uia_a,:f_weight,:r_weight,:p_weight,:o_weight,:s_weight,:c_weight)
    end

end
