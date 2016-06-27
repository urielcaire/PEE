# MERGE SORT 5000, 10000, 20000

javamergeordenado <- read.csv(file="C:\\R\\java merge ordenado.csv", header=TRUE, sep=",")

pythonmergeordenado <- read.csv(file="C:\\R\\python merge ordenado.csv", header=TRUE, sep=",")

csharpmergeordenado <- read.csv(file="C:\\R\\csharp merge ordenado.csv", header=TRUE, sep=",")

# 5000
#JAVA X PYTHON
t.test(javamergeordenado$X5000, pythonmergeordenado$X5000, alternative="greater")

data:  javamergeordenado$X5000 and pythonmergeordenado$X5000
t = -25.863, df = 40.905, p-value = 1
alternative hypothesis: true difference in means is greater than 0
95 percent confidence interval:
  -0.02649605         Inf
sample estimates:
  mean of x   mean of y 
0.002235362 0.027112579 

#PYTHON X CSHARP

t.test(pythonmergeordenado$X5000, csharpmergeordenado$X5000, alternative="greater")

data:  pythonmergeordenado$X5000 and csharpmergeordenado$X5000
t = -5.5737, df = 34.557, p-value = 1
alternative hypothesis: true difference in means is greater than 0
95 percent confidence interval:
  -0.02134793         Inf
sample estimates:
  mean of x  mean of y 
0.02711258 0.04349322 


# 10000
#JAVA X PYTHON
t.test(javamergeordenado$X10000, pythonmergeordenado$X10000, alternative="greater")

data:  javamergeordenado$X10000 and pythonmergeordenado$X10000
t = -89.984, df = 57.948, p-value = 1
alternative hypothesis: true difference in means is greater than 0
95 percent confidence interval:
  -0.05536785         Inf
sample estimates:
  mean of x   mean of y 
0.002345062 0.056703145 

#PYTHON X CSHARP

t.test(pythonmergeordenado$X10000, csharpmergeordenado$X10000, alternative="greater")
data:  pythonmergeordenado$X10000 and csharpmergeordenado$X10000
t = -44.119, df = 55.94, p-value = 1
alternative hypothesis: true difference in means is greater than 0
95 percent confidence interval:
  -0.03030978         Inf
sample estimates:
  mean of x  mean of y 
0.05670315 0.08590586 


#20000
#JAVA X PYTHON
t.test(javamergeordenado$X20000, pythonmergeordenado$X20000, alternative="greater")
 
data:  javamergeordenado$X20000 and pythonmergeordenado$X20000
t = -60.943, df = 53.937, p-value = 1
alternative hypothesis: true difference in means is greater than 0
95 percent confidence interval:
  -0.1235698        Inf
sample estimates:
  mean of x   mean of y 
0.005893639 0.126160701 

#PYTHON X CSHARP
t.test(pythonmergeordenado$X20000, csharpmergeordenado$X20000, alternative="greater")

data:  pythonmergeordenado$X20000 and csharpmergeordenado$X20000
t = -17.578, df = 32.618, p-value = 1
alternative hypothesis: true difference in means is greater than 0
95 percent confidence interval:
  -0.125046       Inf
sample estimates:
  mean of x mean of y 
0.1261607 0.2402215 







# QUICK SORT 5000, 10000, 20000

javaquickordenado <- read.csv(file="C:\\R\\java quick ordenado.csv", header=TRUE, sep=",")

pythonquickordenado <- read.csv(file="C:\\R\\python quick ordenado.csv", header=TRUE, sep=",")

csharpquickordenado <- read.csv(file="C:\\R\\csharp quick ordenado.csv", header=TRUE, sep=",")

# 5000
#JAVA X PYTHON
t.test(javaquickordenado$X5000, pythonquickordenado$X5000, alternative="greater")

data:  javaquickordenado$X5000 and pythonquickordenado$X5000
t = -35.172, df = 54.655, p-value = 1
alternative hypothesis: true difference in means is greater than 0
95 percent confidence interval:
  -0.01209132         Inf
sample estimates:
  mean of x    mean of y 
0.0004411667 0.0119833951 

#PYTHON X CSHARP
t.test(pythonquickordenado$X5000, csharpquickordenado$X5000, alternative="greater")

data:  pythonquickordenado$X5000 and csharpquickordenado$X5000
t = -11.014, df = 29.639, p-value = 1
alternative hypothesis: true difference in means is greater than 0
95 percent confidence interval:
  -0.03155503         Inf
sample estimates:
  mean of x  mean of y 
0.01198340 0.03932373 


# 10000
#JAVA X PYTHON
t.test(javaquickordenado$X10000, pythonquickordenado$X10000, alternative="greater")

data:  javaquickordenado$X10000 and pythonquickordenado$X10000
t = -58.909, df = 56.41, p-value = 1
alternative hypothesis: true difference in means is greater than 0
95 percent confidence interval:
  -0.02555212         Inf
sample estimates:
  mean of x   mean of y 
0.000703634 0.025550396 

#PYTHON X CSHARP
t.test(pythonquickordenado$X10000, csharpquickordenado$X10000, alternative="greater")
data:  pythonquickordenado$X10000 and csharpquickordenado$X10000
t = -111.57, df = 38.263, p-value = 1
alternative hypothesis: true difference in means is greater than 0
95 percent confidence interval:
  -0.09724832         Inf
sample estimates:
  mean of x mean of y 
0.0255504 0.1213513 


# 20000
#JAVA X PYTHON
t.test(javaquickordenado$X20000, pythonquickordenado$X20000, alternative="greater")

data:  javaquickordenado$X20000 and pythonquickordenado$X20000
t = -97.251, df = 45.495, p-value = 1
alternative hypothesis: true difference in means is greater than 0
95 percent confidence interval:
  -0.05244125         Inf
sample estimates:
  mean of x   mean of y 
0.001108833 0.052660049 


#PYTHON X CSHARP
t.test(pythonquickordenado$X20000, csharpquickordenado$X20000, alternative="greater")
data:  pythonquickordenado$X20000 and csharpquickordenado$X20000
t = -189.19, df = 43.276, p-value = 1
alternative hypothesis: true difference in means is greater than 0
95 percent confidence interval:
  -0.1935102        Inf
sample estimates:
  mean of x  mean of y 
0.05266005 0.24446616 



# SHELL SORT 5000, 10000, 20000

javashellordenado <- read.csv(file="C:\\R\\java shell ordenado.csv", header=TRUE, sep=",")

pythonshellordenado <- read.csv(file="C:\\R\\python shell ordenado.csv", header=TRUE, sep=",")

csharpshellordenado <- read.csv(file="C:\\R\\csharp shell ordenado.csv", header=TRUE, sep=",")

# 5000
#JAVA X PYTHON
t.test(javashellordenado$X5000, pythonshellordenado$X5000, alternative="greater")

data:  javashellordenado$X5000 and pythonshellordenado$X5000
t = -43.026, df = 56.917, p-value = 1
alternative hypothesis: true difference in means is greater than 0
95 percent confidence interval:
  -0.01422151         Inf
sample estimates:
  mean of x    mean of y 
0.0004224961 0.0141120061 

#PYTHON X CSHARP
t.test(pythonshellordenado$X5000, csharpshellordenado$X5000, alternative="greater")

data:  pythonshellordenado$X5000 and csharpshellordenado$X5000
t = 66.24, df = 29.062, p-value < 2.2e-16
alternative hypothesis: true difference in means is greater than 0
95 percent confidence interval:
  0.01348865        Inf
sample estimates:
  mean of x    mean of y 
0.0141120061 0.0002682733 


# 10000
#JAVA X PYTHON
t.test(javashellordenado$X10000, pythonshellordenado$X10000, alternative="greater")
data:  javashellordenado$X10000 and pythonshellordenado$X10000
t = -65.59, df = 57.681, p-value = 1
alternative hypothesis: true difference in means is greater than 0
95 percent confidence interval:
  -0.03111621         Inf
sample estimates:
  mean of x    mean of y 
0.0005523593 0.0308952102 

#PYTHON X CSHARP
t.test(pythonshellordenado$X10000, csharpshellordenado$X10000, alternative="greater")
data:  pythonshellordenado$X10000 and csharpshellordenado$X10000
t = 90.044, df = 36.729, p-value < 2.2e-16
alternative hypothesis: true difference in means is greater than 0
95 percent confidence interval:
  0.02963525        Inf
sample estimates:
  mean of x    mean of y 
0.0308952102 0.0006939933 


# 20000
#JAVA X PYTHON
t.test(javashellordenado$X20000, pythonshellordenado$X20000, alternative="greater")
data:  javashellordenado$X20000 and pythonshellordenado$X20000
t = -59.042, df = 57.932, p-value = 1
alternative hypothesis: true difference in means is greater than 0
95 percent confidence interval:
  -0.06499397         Inf
sample estimates:
  mean of x   mean of y 
0.002403723 0.065608273 


#PYTHON X CSHARP
t.test(pythonshellordenado$X20000, csharpshellordenado$X20000, alternative="greater")
data:  pythonshellordenado$X20000 and csharpshellordenado$X20000
t = 82.067, df = 30.85, p-value < 2.2e-16
alternative hypothesis: true difference in means is greater than 0
95 percent confidence interval:
  0.0628506       Inf
sample estimates:
  mean of x  mean of y 
0.06560827 0.00143157 











# MERGE SORT 5000, 10000, 20000

java_merge_aleatorio <- read.csv(file="C:\\R\\java_merge_aleatorio.csv", header=TRUE, sep=",")

python_merge_aleatorio <- read.csv(file="C:\\R\\python_merge_aleatorio.csv", header=TRUE, sep=",")

csharp_merge_aleatorio <- read.csv(file="C:\\R\\csharp_merge_aleatorio.csv", header=TRUE, sep=",")

# 5000
#JAVA X PYTHON
t.test(java_merge_aleatorio$X5000, python_merge_aleatorio$X5000, alternative="greater")
data:  java_merge_aleatorio$X5000 and python_merge_aleatorio$X5000
t = -55.545, df = 56.349, p-value = 1
alternative hypothesis: true difference in means is greater than 0
95 percent confidence interval:
  -0.03224808         Inf
sample estimates:
  mean of x   mean of y 
0.002558136 0.033863674 

#PYTHON X CSHARP
t.test(python_merge_aleatorio$X5000, csharp_merge_aleatorio$X5000, alternative="greater")
data:  python_merge_aleatorio$X5000 and csharp_merge_aleatorio$X5000
t = -0.72603, df = 55.131, p-value = 0.7646
alternative hypothesis: true difference in means is greater than 0
95 percent confidence interval:
  -0.001401065          Inf
sample estimates:
  mean of x  mean of y 
0.03386367 0.03428769 

# 10000
#JAVA X PYTHON
t.test(java_merge_aleatorio$X10000, python_merge_aleatorio$X10000, alternative="greater")
data:  java_merge_aleatorio$X10000 and python_merge_aleatorio$X10000
t = -96.466, df = 57.95, p-value = 1
alternative hypothesis: true difference in means is greater than 0
95 percent confidence interval:
  -0.06804435         Inf
sample estimates:
  mean of x   mean of y 
0.003735701 0.070621060 


#PYTHON X CSHARP
t.test(python_merge_aleatorio$X10000, csharp_merge_aleatorio$X10000, alternative="greater")
data:  python_merge_aleatorio$X10000 and csharp_merge_aleatorio$X10000
t = -5.8264, df = 29.868, p-value = 1
alternative hypothesis: true difference in means is greater than 0
95 percent confidence interval:
  -0.0308113        Inf
sample estimates:
  mean of x  mean of y 
0.07062106 0.09448091

# 20000
#JAVA X PYTHON
t.test(java_merge_aleatorio$X20000, python_merge_aleatorio$X20000, alternative="greater")
data:  java_merge_aleatorio$X20000 and python_merge_aleatorio$X20000
t = -76.159, df = 46.732, p-value = 1
alternative hypothesis: true difference in means is greater than 0
95 percent confidence interval:
  -0.147871       Inf
sample estimates:
  mean of x   mean of y 
0.009379012 0.154061975 

#PYTHON X CSHARP
t.test(python_merge_aleatorio$X20000, csharp_merge_aleatorio$X20000, alternative="greater")
data:  python_merge_aleatorio$X20000 and csharp_merge_aleatorio$X20000
t = -11.985, df = 31.404, p-value = 1
alternative hypothesis: true difference in means is greater than 0
95 percent confidence interval:
  -0.1123761        Inf
sample estimates:
  mean of x mean of y 
0.1540620 0.2525151 


# QUICK SORT 5000, 10000, 20000

java_quick_aleatorio <- read.csv(file="C:\\R\\java_quick_aleatorio.csv", header=TRUE, sep=",")

python_quick_aleatorio <- read.csv(file="C:\\R\\python_quick_aleatorio.csv", header=TRUE, sep=",")

csharp_quick_aleatorio <- read.csv(file="C:\\R\\csharp_quick_aleatorio.csv", header=TRUE, sep=",")

# 5000
#JAVA X PYTHON
t.test(java_quick_aleatorio$X5000, python_quick_aleatorio$X5000, alternative="greater")
data:  java_quick_aleatorio$X5000 and python_quick_aleatorio$X5000
t = -50.218, df = 57.12, p-value = 1
alternative hypothesis: true difference in means is greater than 0
95 percent confidence interval:
  -0.01755046         Inf
sample estimates:
  mean of x    mean of y 
0.0007837049 0.0177686730 


#PYTHON X CSHARP
t.test(python_quick_aleatorio$X5000, csharp_quick_aleatorio$X5000, alternative="greater")
data:  python_quick_aleatorio$X5000 and csharp_quick_aleatorio$X5000
t = 34.409, df = 48.94, p-value < 2.2e-16
alternative hypothesis: true difference in means is greater than 0
95 percent confidence interval:
  0.01555077        Inf
sample estimates:
  mean of x   mean of y 
0.017768673 0.001421363 

# 10000
#JAVA X PYTHON
t.test(java_quick_aleatorio$X10000, python_quick_aleatorio$X10000, alternative="greater")
data:  java_quick_aleatorio$X10000 and python_quick_aleatorio$X10000
t = -68.026, df = 50.088, p-value = 1
alternative hypothesis: true difference in means is greater than 0
95 percent confidence interval:
  -0.03645876         Inf
sample estimates:
  mean of x  mean of y 
0.00189542 0.03747759 


#PYTHON X CSHARP
t.test(python_quick_aleatorio$X10000, csharp_quick_aleatorio$X10000, alternative="greater")
data:  python_quick_aleatorio$X10000 and csharp_quick_aleatorio$X10000
t = 49.811, df = 40.203, p-value < 2.2e-16
alternative hypothesis: true difference in means is greater than 0
95 percent confidence interval:
  0.03377874        Inf
sample estimates:
  mean of x   mean of y 
0.037477591 0.002517167 


# 20000
#JAVA X PYTHON
t.test(java_quick_aleatorio$X20000, python_quick_aleatorio$X20000, alternative="greater")
data:  java_quick_aleatorio$X20000 and python_quick_aleatorio$X20000
t = -84.449, df = 46.047, p-value = 1
alternative hypothesis: true difference in means is greater than 0
95 percent confidence interval:
  -0.07996502         Inf
sample estimates:
  mean of x   mean of y 
0.003317029 0.081723536 

#PYTHON X CSHARP
t.test(python_quick_aleatorio$X20000, csharp_quick_aleatorio$X20000, alternative="greater")
data:  python_quick_aleatorio$X20000 and csharp_quick_aleatorio$X20000
t = 89.964, df = 39.257, p-value < 2.2e-16
alternative hypothesis: true difference in means is greater than 0
95 percent confidence interval:
  0.07743948        Inf
sample estimates:
  mean of x  mean of y 
0.08172354 0.00280631 


# SHELL SORT 5000, 10000, 20000

java_shell_aleatorio <- read.csv(file="C:\\R\\java_shell_aleatorio.csv", header=TRUE, sep=",")

python_shell_aleatorio <- read.csv(file="C:\\R\\python_shell_aleatorio.csv", header=TRUE, sep=",")

csharp_shell_aleatorio <- read.csv(file="C:\\R\\csharp_shell_aleatorio.csv", header=TRUE, sep=",")

# 5000
#JAVA X PYTHON
t.test(java_shell_aleatorio$X5000, python_shell_aleatorio$X5000, alternative="greater")
data:  java_shell_aleatorio$X5000 and python_shell_aleatorio$X5000
t = -43.933, df = 41.165, p-value = 1
alternative hypothesis: true difference in means is greater than 0
95 percent confidence interval:
  -0.03280098         Inf
sample estimates:
  mean of x   mean of y 
0.001133604 0.032724593 

#PYTHON X CSHARP
t.test(python_shell_aleatorio$X5000, csharp_shell_aleatorio$X5000, alternative="greater")
data:  python_shell_aleatorio$X5000 and csharp_shell_aleatorio$X5000
t = 38.421, df = 52.078, p-value < 2.2e-16
alternative hypothesis: true difference in means is greater than 0
95 percent confidence interval:
  0.0292574       Inf
sample estimates:
  mean of x  mean of y 
0.03272459 0.00213383 

# 10000
#JAVA X PYTHON
t.test(java_shell_aleatorio$X10000, python_shell_aleatorio$X10000, alternative="greater")
data:  java_shell_aleatorio$X10000 and python_shell_aleatorio$X10000
t = -82.353, df = 55.605, p-value = 1
alternative hypothesis: true difference in means is greater than 0
95 percent confidence interval:
  -0.07630625         Inf
sample estimates:
  mean of x   mean of y 
0.002653585 0.077440781 

#PYTHON X CSHARP
t.test(python_shell_aleatorio$X10000, csharp_shell_aleatorio$X10000, alternative="greater")
data:  python_shell_aleatorio$X10000 and csharp_shell_aleatorio$X10000
t = 123.33, df = 37.384, p-value < 2.2e-16
alternative hypothesis: true difference in means is greater than 0
95 percent confidence interval:
  0.0744953       Inf
sample estimates:
  mean of x   mean of y 
0.077440781 0.001912577 

# 20000
#JAVA X PYTHON
t.test(java_shell_aleatorio$X20000, python_shell_aleatorio$X20000, alternative="greater")
data:  java_shell_aleatorio$X20000 and python_shell_aleatorio$X20000
t = -22.085, df = 29.169, p-value = 1
alternative hypothesis: true difference in means is greater than 0
95 percent confidence interval:
  -0.2203803        Inf
sample estimates:
  mean of x   mean of y 
0.004481363 0.209120370 

#PYTHON X CSHARP
t.test(python_shell_aleatorio$X20000, csharp_shell_aleatorio$X20000, alternative="greater")
data:  python_shell_aleatorio$X20000 and csharp_shell_aleatorio$X20000
t = 21.999, df = 29.238, p-value < 2.2e-16
alternative hypothesis: true difference in means is greater than 0
95 percent confidence interval:
  0.1882193       Inf
sample estimates:
  mean of x   mean of y 
0.209120370 0.005151703 