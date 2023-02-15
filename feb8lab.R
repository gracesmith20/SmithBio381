#atomic Vector intro - LAB
#8 feb 2023
#GAS
#--------------------------------------

x <- c(1,2,3,4,5) #creating vector 
#vector can hold all data types as long as they're the same datatype (numeric, character, double, etc.)

y <- c("hi", "friends") #character class

#new funtions:

#runif()
#generate random distribution
set.seed(0) #makes runif reproducible 
rand <- runif(20, min=0, max=100)
print(rand)


#rep()
#replicate the values in x


#seq()
#generate regular sequences
