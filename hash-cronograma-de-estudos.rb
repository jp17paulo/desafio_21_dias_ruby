cronogramaSemanal = [
                                                        {
                                                        diaDaSemana: "Segunda Feira",
                                                        disciplina: [
                                                            "Ingês(C# Avançado)",
                                                            "NHibernate",
                                                            "Carreira Front End",
                                                            "Sql Server",
                                                            "Iniciando com Asp.Net MVC 5",
                                                            "Mercado Financeiro"
                                                        ]
                                                    },
                                                    {
                                                        diaDaSemana: "Terça feira",
                                                        disciplina: [
                                                            "Inglês(TFS Advanced)",
                                                            "NHibernate",
                                                            "Carreira Front End",
                                                            "C# Avançado",
                                                            "Sql Server",
                                                            "GW"
                                                        ]
                                                    },
                                                    {
                                                        diaDaSemana: "Quarta Feira",
                                                        disciplina: [
                                                            "Inglês(Scrum Advanced)",
                                                            "Fundamentos de Arquitetura de Software",
                                                            "Iniciando com Asp Net MVC 5",
                                                            "Sql Server",
                                                            "C# Avançado",
                                                            "Excel"
                                                        ]
                                                    },
                                                    {
                                                    diaDaSemana: "Quinta Feira",
                                                    disciplina: [
                                                        "Inglês(C# Orientação a objetos)",
                                                        "Nhibernate",
                                                        "Carreira Front End",
                                                        "Sql Server",
                                                        "Digitação",
                                                        "Mercado Financeiro"
                                                    ]
                                                    },
                                                    {
                                                    diaDaSemana: "Sexta Feira",
                                                    disciplina: [
                                                        "Inglês(NHibernate)",
                                                        "Nhibernate",
                                                        "Git / Youtube",
                                                        "C# Avançado",
                                                        "Sql Server",
                                                        "Digitação"
                                                    ]
                                                    }
                                          ]  

cronogramaSemanal .each  do |c|
    puts "Dia da semana:  #{c[:diaDaSemana]}"
    puts "Matérias:  #{c[:disciplina]}"
    puts "\n"
end