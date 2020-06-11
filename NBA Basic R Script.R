
#---------------------------------------->
#Basics EDA

Games

rownames(Games)
colnames(Games)

Games["DwayneWade", "2008"]

FieldGoals

round(FieldGoals / Games)





#-------------------------->
#Plotting Graphs

matplot(t(FieldGoals), type = "b", pch = 15:18, col = c(1:4,6))  
#Transpossing Feild Goals as we want Playersname in Column
legend("bottomleft", inset = 0.01, legend = Players, col = c(1:4,6), pch = 15:18, horiz = F)


matplot(t(FieldGoals/Games), type = "b", pch = 15:18, col = c(1:4,6))  
#Transpossing Feild Goals as we want Playersname in Column
legend("bottomleft", inset = 0.01, legend = Players, col = c(1:4,6), pch = 15:18, horiz = F)


matplot(t(FieldGoals/FieldGoalAttempts), type = "b", pch = 15:18, col = c(1:4,6))  
#Transpossing Feild Goals as we want Playersname in Column
legend("bottomleft", inset = 0.01, legend = Players, col = c(1:4,6), pch = 15:18, horiz = F)




#------------------------------------------>
#SUBSET

Games


Games[1:5,]
Games[c(1,10), 5:10]

Games[1,]  #It is a Vevtor
is.matrix(Games[1,]) #Checking for Matrix, Returns False
is.vector(Games[1,]) #Checking for Vector, Returns True
Games[1,,drop= F] #Changing Vector into Matrix using drop function 
#As [] returns Vector for single Subset.

Games[1,5] 
Games[1,5,drop = F]




#----------------------------------->
#Visualising Subset

matplot(t(MinutesPlayed[1:3,]), type = "b", pch = 15:18, col = c(1:4,6))
#Transpossing Feild Goals as we want Playersname in Column
legend("bottomleft", inset = 0.01, legend = Players[1:3], col = c(1:4,6), pch = 15:18, horiz = F)


matplot(t(MinutesPlayed[1,, drop= F]), type = "b", pch = 15:18, col = c(1:4,6))
#Transpossing Feild Goals as we want Playersname in Column
legend("bottomleft", inset = 0.01, legend = Players[1], col = c(1:4,6), pch = 15:18, horiz = F)



#------------------------------------->
#Creating Functions

plot <- function(data, rows = 1:10){
  matplot(t(data[rows,, drop= F]), type = "b", pch = 15:18, col = c(1:4,6))
  #Transpossing Feild Goals as we want Playersname in Column
  legend("bottomleft", inset = 0.01, legend = Players[rows], col = c(1:4,6), pch = 15:18, horiz = F)
}

plot(FieldGoalAttempts)

#Giving Rows a defaualt Value by Assingning rows= 1:10



#------------------------------------------>

#Salary
plot(Salary)
plot(Salary/Games)
plot(Salary/ FieldGoals)

#In-game Metrics
plot(MinutesPlayed)
plot(Points)









