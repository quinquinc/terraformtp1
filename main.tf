resource "random_integer" "identifiant" {
    min = 1
    max = 16
}

resource "random_integer" "experience" {
    min = 20
    max = 30
}
resource "local_file" "random" {
    content = "${random_integer.identifiant.result} ${var.liste_personne[0]} ${var.liste_personne[1]} ${var.liste_personne[2]} ${random_integer.experience.result} ${var.liste_personne[4]}" # ${var.liste_personne[2]} ${var.liste_personne[3]} ${var.liste_personne[4]}"
    filename = "C:/Users/Administrateur/Documents/Terraform/TP5/random"

    depends_on = [
      random_integer.identifiant
    ]
}