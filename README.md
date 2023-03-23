# Project Generator Tool

A CLI program for generating new `Twine Projects` meaning folder structure and files.

## NOTICE: Currently this will generate a predefined folder-structure

## Planned features

- [x] Command line interface (CLI)
    - [ ] Add flags to use for Quick/Fast and/or Test `generator ProjectName --Q --T` so the user can skip any questions and just get a simple project folder for testing
- [x] Check if tweego is installed and either nag about it or add install suggestions in `README.md`
- [x] Check if VS-Code is installed and add recommendation for `Twine 3 Language Tools`-extension
- [x] Generates a new project folder with a pre-defined folder structure
    - [ ] Internal read structure from yaml
    - [ ] Add support for custom yaml folder structure
- [ ] If git is present, add `.gitignore`
- [ ] Creates default files and directories, such as `README.md` and `src/`
- [ ] Includes customizable templates for generating project files
- [ ] Automatically adds project files to a version control system, such as Git
- [ ] Allows users to generate project files from existing templates or directories
- [ ] Supports customization of the folder structure and file templates
- [ ] Enables users to configure project settings, such as build configurations or environment variables
- [ ] Enables users to configure project settings, such as `Config.[sugarcube]`

## Maybe features
- [ ] First launch make `config.yaml`
- [ ] Make it a wizard or just populate it with defaults`?`
    - [ ] Preferred folder structure and names for the `dist` and `src` folders
    - [ ] Compiler command for `tasks` if vs-code?