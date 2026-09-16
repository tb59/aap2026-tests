def moyenne(valeurs):
    """Calcule la moyenne des valeurs."""
    if not valeurs:
        raise ValueError("Impossible de calculer la moyenne d'une liste vide")
    return sum(valeurs) / len(valeurs)

if __name__ == "__main__":
    print(moyenne([10, 20, 15]))