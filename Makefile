src_files = \
	t/t004-templates.sh \
	t/t000-basic.sh \
	t/t001-list_paths.sh \
	t/t002-git-version-string.sh \
	t/t003-mkmf.sh

something: file_versions.inc t/t000-basic.sh
	echo "File built" > $@

file_versions.inc : $(src_files)
	bin/git-version-string -v file_versions $^ > $@
