require 'application_helper'
require 'notes_randomizer'

class TwelveNotesController < ApplicationController
	include ApplicationHelper
	include NotesRandomizer

	def index
		@notes = get_12_notes(:sharps)
	end
end