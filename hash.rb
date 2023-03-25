# Roberto é dono de uma faculdade
# Ele irá precisar organizar a grade do curso em alguns meses
# Faça um programa que organize os dados deo semestre da faculdade do Roberto 
# O que teremos nesta organização, "Nome da matéria", "Temas até o mês 6", colocar nesta estrutura
# pelo menos 3 matérias 


grade = [
    {
    Nome: "Matemática",
    Meses: [
        "Mês 1 - Título ",
        "Mês 2 - Título",
        "Mês 3 - Título",
        "Mês 4 - Título",
        "Mês 5 - Titulo",
        "Mês 6 - Titulo"
    ]
},
 {
    Nome: "Português",
    Meses: [
        "Mês 1 - Título ",
        "Mês 2 - Título",
        "Mês 3 - Título",
        "Mês 4 - Título",
        "Mês 5 - Titulo",
        "Mês 6 - Titulo"
    ]
},
{
    Nome: "Ciências",
    Meses: [
        "Mês 1 - Título ",
        "Mês 2 - Título",
        "Mês 3 - Título",
        "Mês 4 - Título",
        "Mês 5 - Titulo",
        "Mês 6 - Titulo"
    ]
}
]

# grade << {
#     "Matemática": [
#         "Mês 1 - Título ",
#         "Mês 2 - Título",
#         "Mês 3 - Título",
#         "Mês 4 - Título",
#         "Mês 5 - Titulo",
#         "Mês 6 - Titulo"
#     ]
# }

# grade << {
#     "Português": [
#         "Mês 1 - Título ",
#         "Mês 2 - Título",
#         "Mês 3 - Título",
#         "Mês 4 - Título",
#         "Mês 5 - Titulo",
#         "Mês 6 - Titulo"
#     ]
# }

# grade << {
#     "Ciências": [
#         "Mês 1 - Título ",
#         "Mês 2 - Título",
#         "Mês 3 - Título",
#         "Mês 4 - Título",
#         "Mês 5 - Titulo",
#         "Mês 6 - Titulo"
#     ]
# }


# puts grade[0][:"Matemática"]
# puts grade[0][:Nome]
# puts grade[0]


grade.each  do |g|
    puts "Nome da Matéria: #{g[:Nome]}"
    puts "Meses e títulos: #{g[:Meses]}"
end