from moyenne import moyenne
import math

def test_moyenne():
    resultat = moyenne([10, 20])
    assert moyenne([10, 20]) == 15


def test_moyenne_plusieurs_valeurs():
    assert moyenne([10, 10, 20]) == 40 / 3


def test_moyenne_liste_vide():
    try:
        moyenne([])
        assert False
    except :
        "il faudrait tester précisément une ValueError"
        assert True

