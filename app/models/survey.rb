class Survey < ApplicationRecord
	serialize :rating, Array

	validates :name, presence: true

	validates :ar_l, presence: true, numericality: { only_int: true, other_than: 0 }
	validates_numericality_of :ar_l, greater_than_or_equal_to: 0, less_than_or_equal_to: 9

	validates :ar_o, presence: true, numericality: { only_int: true, other_than: 0 }
	validates_numericality_of :ar_o, greater_than_or_equal_to: 0, less_than_or_equal_to: 9

	validates :ar_uep, presence: true, numericality: { only_int: true, other_than: 0 }
	validates_numericality_of :ar_uep, greater_than_or_equal_to: 0, less_than_or_equal_to: 9

	validates :ar_uia, presence: true, numericality: { only_int: true, other_than: 0 }
	validates_numericality_of :ar_uia, greater_than_or_equal_to: 0, less_than_or_equal_to: 9

	validates :ar_a, presence: true, numericality: { only_int: true, other_than: 0 }
	validates_numericality_of :ar_a, greater_than_or_equal_to: 0, less_than_or_equal_to: 9


	validates :l_o, presence: true, numericality: { only_int: true, other_than: 0 }
	validates_numericality_of :l_o, greater_than_or_equal_to: 0, less_than_or_equal_to: 9

	validates :l_uep, presence: true, numericality: { only_int: true, other_than: 0 }
	validates_numericality_of :l_uep, greater_than_or_equal_to: 0, less_than_or_equal_to: 9

	validates :l_uia, presence: true, numericality: { only_int: true, other_than: 0 }
	validates_numericality_of :l_uia, greater_than_or_equal_to: 0, less_than_or_equal_to: 9

	validates :l_a, presence: true, numericality: { only_int: true, other_than: 0 }
	validates_numericality_of :l_a, greater_than_or_equal_to: 0, less_than_or_equal_to: 9


	validates :o_uep, presence: true, numericality: { only_int: true, other_than: 0 }
	validates_numericality_of :o_uep, greater_than_or_equal_to: 0, less_than_or_equal_to: 9

	validates :o_uia, presence: true, numericality: { only_int: true, other_than: 0 }
	validates_numericality_of :o_uia, greater_than_or_equal_to: 0, less_than_or_equal_to: 9

	validates :o_a, presence: true, numericality: { only_int: true, other_than: 0 }
	validates_numericality_of :o_a, greater_than_or_equal_to: 0, less_than_or_equal_to: 9


	validates :uep_uia, presence: true, numericality: { only_int: true, other_than: 0 }
	validates_numericality_of :uep_uia, greater_than_or_equal_to: 0, less_than_or_equal_to: 9

	validates :uep_a, presence: true, numericality: { only_int: true, other_than: 0 }
	validates_numericality_of :uep_a, greater_than_or_equal_to: 0, less_than_or_equal_to: 9


	validates :uia_a, presence: true, numericality: { only_int: true, other_than: 0 }
	validates_numericality_of :uia_a, greater_than_or_equal_to: 0, less_than_or_equal_to: 9


end











