library(readxl)
payment <- read_xlsx("C:/Repos/Help/ForAnna/payment_msk.xlsx", sheet=1)


library(comprehenr)
debt <- payment $ DebtQuantityUPD[c(1:141)]
debt_q <- to_vec(
  for (i in debt) as.double(i)
)

median(debt_q)
quantile(debt_q)


library(ggplot2)
data_pay <- data.frame(y = debt_q)


ggplot(data_pay) +
  geom_boxplot(
    aes(
      x = "Median \n& quantiles",
      y = debt_q
    )
  ) +
  labs(
    x = "Quantity",
    y = "Quantity Debt"
  )
quantity <- payment$CurrentQuantityUPD[c(1:141)]
pay <- to_vec(
  for(i in quantity) as.double(i)
)

median(pay)
quantile(pay)