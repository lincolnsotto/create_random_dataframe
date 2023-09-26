library(tidyverse) #manipulação de dados
library(stats) #criar distribuições de probabilidade
library(gtExtras) #sumario gráfico da base

#variavel para controlar o tamanho do data frame
tamanho_df <- 100

#criando o data frame
df <- dplyr::data_frame(idade = sample(18:65, tamanho_df, replace =  T), #aleatória e discreta
                        salario = stats::rnorm(tamanho_df, 9000, 2000 ), #normal e contínua
                        genero = sample(c('Masculino', 'Feminino'), tamanho_df, replace = T) #aleatória e discreta
                        )

#incluindo novas variaveis no dataframe
df$var_exponencial <- stats::rexp(tamanho_df, rate = 0.2) #exponencial e contínua
df$var_gamma <- stats::rgamma(tamanho_df,shape = 2, scale = 1) #gamma e contínua
df$var_poisson <- stats::rpois(100, lambda = 5) #poisson e contínua

#cria sumário gráfico estatístico
gt_plt_summary(df)


