.PHONY: test check format benchmark all info doc

SEP="------------------------------------------------------------------------------------------------------------------------------"
define cartouche
	@echo "\n$(SEP)\n\t$(1)\n$(SEP)"
endef

 
#commencer une ligne par @ permet de spécifier un commentaire
info: 
	@echo "Choisir une cible parmi doc, test, check, format, benchmark, all"

all: doc test check format benchmark

doc: 
	python -m pydoc -w moyenne

man: 
	@echo "Pour afficher l'aide de ruff, utiliser :  ruff --help"
	@echo "Pour obtenir l'explication d'une règle particulière, utiliser : ruff rule I001"
	@echo "Pour afficher l'aide de pycodestyle, utiliser : pycodestyle --help"
	
test:
	$(call cartouche, Tests)
	pytest

# commencer une commande par - permet de poursuivre en cas d'erreur 
# || true permet de ne pas afficher de message de make en cas d'erreur (même 'ignored')
# comme celui-ci : make: [makefile:28: check] Error 1 (ignored)  
check:
	$(call cartouche, Analyse Ruff)
	-@ruff check . || true
	$(call cartouche, Analyse Pycodestyle)
	-@pycodestyle . || true

format:
	ruff format .

benchmark:
	python benchmark.py





























































































































































egg: 
	@echo  "Vous avez trouvé un easteregg !"