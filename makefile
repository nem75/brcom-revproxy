SYNC_OPTIONS = -avC --exclude .git/ --exclude .gitignore --exclude makefile . vps:./brcom-revproxy

deploy-test:
	rsync --dry-run $(SYNC_OPTIONS)

deploy:
	rsync $(SYNC_OPTIONS)
