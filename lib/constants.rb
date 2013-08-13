module TwelveNotes
  class Constants
  
  	class Notes
      FLAT_SYMBOL = 'b'
      SHARP_SYMBOL = '#'

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

  		# NATURALS = [ A, B, C, D, E, F, G ]
  		# SHARPS = [ A_SH, C_SH, D_SH, F_SH, G_SH ]
  		# FLATS  = [ B_FL, D_FL, E_FL, G_FL, A_FL ]

  		NOTES_WITH_SHARPS = [ A, A_SH, B, C, C_SH, D, D_SH, E, F, F_SH, G, G_SH ] 
      NOTES_WITH_FLATS = [ A, B_FL, B, C, D_FL, D, E_FL, E, F, G_FL, G, A_FL ] 

      ALL_NOTES = {
        :sharps => NOTES_WITH_SHARPS,
        :flats  => NOTES_WITH_FLATS
      }

  		# NOTE_VALUES = {
	  	# 	A    => 1,
	  	# 	A_SH => 2,
	  	# 	B_FL => 2,
	  	# 	B    => 3,
	  	# 	C    => 4,
	  	# 	C_SH => 5,
	  	# 	D_FL => 5,
	  	# 	D    => 6,
	  	# 	D_SH => 7,
	  	# 	E_FL => 7,
	  	# 	E    => 8,
	  	# 	F    => 9,
	  	# 	F_SH => 10,
	  	# 	G_FL => 10,
	  	# 	G    => 11,
	  	# 	G_SH => 12,
	  	# 	A_FL => 12  			
  		# }
  	end
  end
end






