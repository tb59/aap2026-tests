def moyenne(valeurs):
    #docstrings
    """Calcule la moyenne des valeurs.

    :param valeurs: valeurs dont on veut calculer la moyenne
    :returns: la moyenne
    :raises ValueError: si la liste est vide
    """
    if not valeurs:
        raise ValueError("Impossible de calculer la moyenne d'une liste vide")
    return sum(valeurs) / len(valeurs)

if __name__ == "__main__":
    print(moyenne.__doc__)
    print("moyenne([10, 20, 15]) :", end=" ")
    print(moyenne([10, 20, 15]))