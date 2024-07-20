all:
	python3 scripts/update-values-from-config.py
	helm-docs
