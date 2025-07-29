local root_files = {
  'pyproject.toml',
  'setup.py',
  'setup.cfg',
  'requirements.txt',
  'Pipfile',
  'pyrightconfig.json',
  '.git',
}

return {
  cmd = {"pyright-langserver", "--stdio"},
  filetypes = {"python"},
  root_markers = root_files,
  single_file_support = true,
}
