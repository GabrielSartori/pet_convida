#----------------------------------------------------------------------------------------------
#' Pacotes 
library(ggplot2)
library(dplyr)

#----------------------------------------------------------------------------------------------
#' Modelo 

get_modelo_linear <- function(...){

    "
    Cria o modelo linear
    "

    x1 <- rnorm(100, 50, 9)
    x2 <- rnorm(100, 200, 64)
    error <- rnorm(100, 0, 16)
    y1 <- 150 - (4 * x1) + (2.5 * x2) + error

    model <- lm(y1 ~ x1 + x2) 

    return(model)

}

#----------------------------------------------------------------------------------------------
#' Opcionais 

get_opcionais <- function(...){

    "
    Extrair Coeficientes de Opcionais
    "

    df_optionals <-
    data.frame(
        opcionais = c("sala_gourmet", "sacada", "playground", "piscina", "pet_place", "casa_boneca"),
        preco = c(1000, -500, 350, 800, 100, -230)
    ) |>
    mutate(is_neg = ifelse(preco > 0, "positivo", "negativo"))

    gg <- df_optionals |>
        ggplot(aes(reorder(opcionais, preco), preco, fill = is_neg, color = is_neg)) +
        geom_col() +
        geom_label(aes(label = preco), fill = "white", color = "black") +
        scale_fill_manual(values = c(positivo = "#d65e5e", negativo = "#68a2d1")) +
        scale_color_manual(values = c(positivo = "#9d2424", negativo = "#103452")) +
        scale_y_continuous(labels = scales::dollar_format(prefix = "R$")) +
        coord_flip() +
        guides(fill = FALSE, color = FALSE) +
        labs(x = "Opcionais") +
        theme_bw()
    
    return(gg)

}

#----------------------------------------------------------------------------------------------
#' KPI de Negócio

get_kpi_negocio <- function(...){

    "
    Retornar a métrica de finanças positiva ou negativa
    "

    repasse_entregador <- runif(1000, 0, 2) 
    repasse_estabelecimento  <- runif(1000, 1, 5)
    promocao_1 <- runif(500, 1, 5)
    promocao_2 <- runif(500, 4, 10)
    promocao <- c(promocao_1, promocao_2)

    # TICKET_50_REAIS
    n_pedido <- rep(c(10, 50, 100, 1000), c(500, 350, 100, 50))

    kpi_financeiro  <- repasse_entregador + repasse_estabelecimento - promocao

    gg <-
        data.frame(
            n_pedido,
            kpi_financeiro
            
        ) |>
        ggplot() +
        annotate("rect", xmin = 0, xmax = Inf, ymin = 0, ymax = 1, fill = "#96d396") +
        annotate("rect", xmin = -Inf, xmax = 0, ymin = 0, ymax = 1, fill = "#e98a5d") +
        stat_ecdf(aes(kpi_financeiro)) +
        facet_wrap(~n_pedido, nrow = 1) +
        labs(y = "% de Pedidos", x = "Saúde Financeira") +
        theme_bw()

    return(gg)
}

#----------------------------------------------------------------------------------------------
#' Modelo de Análise 
molde_analise <- function(...){

    "Transferência de Análise de Dados"

    gg <- ggplot() + 
        annotate('rect', xmin = 0, xmax = 2, ymin = 0, ymax = Inf, fill = 'transparent') +   
        annotate('rect', xmin = 0, xmax = 2, ymin = -Inf, ymax = Inf, fill = '#ffb3ff', alpha = 0.5) +
        annotate('text', x = 1, y = 0.0045, label = 'Descritiva', cex = 5) +
        annotate('text', x = 1, y = 0.0025, label = 'Área de Negócio', cex = 5) +      
        annotate('rect', xmin = 2, xmax = 4, ymin = -Inf, ymax = Inf, fill = '#ff1aff', alpha = 0.5) + 
        annotate('text', x = 3, y = 0.0045, label = 'Diagnóstica', cex = 5) +   
        annotate('text', x = 3, y = 0.0025, label = 'Analista de Dados', cex = 5) +
        annotate('rect', xmin = 4, xmax = 6, ymin = -Inf, ymax = Inf, fill = '#b300b3', alpha = 0.5) +
        annotate('text', x = 5, y = 0.0045, label = 'Preditiva', cex = 5) + 
        annotate('text', x = 5, y = 0.0025, label = 'Cientista de Dados', cex = 5) +
        annotate('rect', xmin = 6, xmax = 8, ymin = -Inf, ymax = Inf, fill = '#4d004d', alpha = 0.5) +
        annotate('text', x = 7, y = 0.0045, label = 'Prescritiva', cex = 5) + 
        annotate('text', x = 7, y = 0.0025, label = 'Cientista de Dados', cex = 5) +
        theme_void()  

    return(gg)

}