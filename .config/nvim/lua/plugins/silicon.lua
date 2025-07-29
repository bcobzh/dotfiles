return {
	"michaelrommel/nvim-silicon",
	lazy = true,
	cmd = "Silicon",
	config = function()
		require("silicon").setup({
			-- Configuration here, or leave empty to use defaults
			font = "DejaVu Sans Mono;Noto Color Emoji=34",
			output = function()
				return "./" .. os.date("!%Y-%m-%dT%H-%M-%S") .. "_code.png"
			end,
		})
	end
}
