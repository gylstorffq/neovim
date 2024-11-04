return {
	'nvim-orgmode/orgmode',
	config = function()
		require('orgmode').setup({
		  org_agenda_files = {'~/03_notes/*'},
		  org_default_notes_file = '~/03_notes/TODOs.org',
		})
	end
}
