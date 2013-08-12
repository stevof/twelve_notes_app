module TwelveNotes
  class Constants
  
  	# SHARP_NOTES_ARRAY = %w[a a# b c c# d d# e f f# g g#]

  	class Notes
  		# NOTE_VALUES = (1..12).to_a

  		# NOTE_VALUES = [
  		# 	{ :value => 12, :sharp => G_SH, :flat => A_FL },
  		# 	{ :value => 1, :sharp => nil, :flat => nil },
  		# 	{ :value => 2, :sharp => A_SH, :flat => B_FL },
  		# 	{ :value => 3, :sharp => nil, :flat => nil }
  		# ]

  		A = 'A'
  		A_SH = 'A#'
  		B_FL = 'Bb'
  		B = 'B'
  		C = 'C'
  		C_SH = 'C#'
  		D_FL = 'Db'
  		D = 'D'
  		D_SH = 'D#'
  		E_FL = 'Eb'
  		E = 'E'
  		F = 'F'
  		F_SH = 'F#'
  		G_FL = 'Gb'
  		G = 'G'
  		G_SH = 'G#'
  		A_FL = 'Ab'

  		NATURALS = [ A, B, C, D, E, F, G ]
  		SHARPS = [ A_SH, C_SH, D_SH, F_SH, G_SH ]
  		FLATS  = [ B_FL, D_FL, E_FL, G_FL, A_FL ]

  		NATURALS_AND_SHARPS = [ A, A_SH, B, C, C_SH, D, D_SH, E, F, F_SH, G, G_SH ] # do i need this?


  		NOTE_VALUES = {
	  		A    => 1,
	  		A_SH => 2,
	  		B_FL => 2,
	  		B    => 3,
	  		C    => 4,
	  		C_SH => 5,
	  		D_FL => 5,
	  		D    => 6,
	  		D_SH => 7,
	  		E_FL => 7,
	  		E    => 8,
	  		F    => 9,
	  		F_SH => 10,
	  		G_FL => 10,
	  		G    => 11,
	  		G_SH => 12,
	  		A_FL => 12  			
  		}
  	end

  	#a1 1,--,3,4,5,6,7,8,9,10,11,--

  	#a2 x,--,3,4,5,6,7,8,9,10,x,--

  	#fi 2,12

  	# select a random number from array1, add it to array_final
  	# array2 = array1, minus the selected number, minus the numbers on either side of it
  	#  if 1 => 0 and 2, but 0 = 12
  	#  if 12 => 11 and 13, but 13 = 1
  	#

  		# previously selected note: A

  		# array_main = [ --, --, --, C, C_SH, --, D_SH, E, F, F_SH, G, G_SH ]
  		# array_2 =    [ C, C_SH, D_SH, E, F, F_SH, G ]

  		# final_array: A_SH, D, B, A
  		#

  	# logic for selecting 12 note pattern:
  	#
  	# - start with array_main = 1..12
  	#
  	# - array2 = array_main
  	# - before selecting the note, remove notes 1 step above and below the previously selected note from array2
  	#
  	# - select a random note from array2 and save it in final_array. remove it from array_main.
  	#
  	# - repeat until array_main is empty
  	#
  	# - map array_final to notes in either the notes+sharps or notes+flats array


  end
end






