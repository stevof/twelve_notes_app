require 'application_helper'
require 'notes_randomizer'

class TwelveNotesController < ApplicationController
	include ApplicationHelper
	include NotesRandomizer

	def show
		@notes = get_notes
	end

	def index
		@notes = get_notes
	end

	def json
		@notes = get_notes
		render json: @notes
	end

	def xml
		@notes = get_notes
		render xml: @notes
	end

	def get_notes
		type = (params[:type] == "flats" ? :flats : :sharps)
		get_12_notes(type)
	end

	private :get_notes
end