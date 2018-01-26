class EditColumns < ActiveRecord::Migration[5.1]
  def change

  	rename_column :surveys, :fr, :ar_l
  	rename_column :surveys, :fp, :ar_o
  	rename_column :surveys, :fo, :ar_uep
  	rename_column :surveys, :fs, :ar_uia
  	rename_column :surveys, :fc, :ar_a

  	rename_column :surveys, :fm, :l_o
  	rename_column :surveys, :ft, :l_uep
  	rename_column :surveys, :rp, :l_uia
  	rename_column :surveys, :ro, :l_a

  	rename_column :surveys, :rs, :o_uep
  	rename_column :surveys, :rc, :o_uia
  	rename_column :surveys, :rm, :o_a

  	rename_column :surveys, :rt, :uep_uia
  	rename_column :surveys, :po, :uep_a

  	rename_column :surveys, :ps, :uia_a


  	remove_column :surveys, :pc
  	remove_column :surveys, :pm
  	remove_column :surveys, :pt

  	remove_column :surveys, :os
  	remove_column :surveys, :oc
  	remove_column :surveys, :om
  	remove_column :surveys, :ot

  	remove_column :surveys, :sc
  	remove_column :surveys, :sm
  	remove_column :surveys, :st

  	remove_column :surveys, :cm
  	remove_column :surveys, :ct

  	remove_column :surveys, :mt

  end
end
