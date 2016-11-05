update-contributors:
	@echo 'Removing old CONTRIBUTORS.md'
	@mv CONTRIBUTORS.md CONTRIBUTORS.md.bak
	@echo 'Downloading a list of new contributors'
	@echo "The following is a list of contributors in alphabetical order:" > CONTRIBUTORS.md
	@echo "" >> CONTRIBUTORS.md
	@echo "" >> CONTRIBUTORS.md
	@githubcontrib --owner kbknapp --repo clap-rs --sha master --cols 6 --format md --showlogin true --sortBy login >> CONTRIBUTORS.md
	@rm CONTRIBUTORS.md.bak
