
> install.packages("strucchange")
Installing package into 'C:/Users/Alunos/Documents/R/win-library/3.5'
(as 'lib' is unspecified)
also installing the dependency 'sandwich'

trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/sandwich_2.5-0.zip'
Content type 'application/zip' length 1408514 bytes (1.3 MB)
downloaded 1.3 MB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/strucchange_1.5-1.zip'
Content type 'application/zip' length 951498 bytes (929 KB)
downloaded 929 KB

package 'sandwich' successfully unpacked and MD5 sums checked
package 'strucchange' successfully unpacked and MD5 sums checked

The downloaded binary packages are in
C:\Users\Alunos\AppData\Local\Temp\Rtmpcr28BK\downloaded_packages
> library(strucchange)
Carregando pacotes exigidos: zoo

Attaching package: 'zoo'

The following objects are masked from 'package:base':
  
  as.Date, as.Date.numeric

Carregando pacotes exigidos: sandwich
> library(readxl)
> BITCOIN <- read_excel("C:/Econometria/Bitcoin.xls")
Error in read_fun(path = path, sheet_i = sheet, limits = limits, shim = shim,  : 
                    Failed to open C:/Econometria/Bitcoin.xls
                  > BITCOIN <- read_excel("C:/Econometria/Bitcoin.xls")
                  Error in read_fun(path = path, sheet_i = sheet, limits = limits, shim = shim,  : 
                                      Failed to open C:/Econometria/Bitcoin.xls
                                    > install.packages("strucchange")
                                    Error in install.packages : Updating loaded packages
                                    
                                    Restarting R session...
                                    
                                    > install.packages("strucchange")
                                    Installing package into 'C:/Users/Alunos/Documents/R/win-library/3.5'
                                    (as 'lib' is unspecified)
                                    trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/strucchange_1.5-1.zip'
                                    Content type 'application/zip' length 951498 bytes (929 KB)
                                    downloaded 929 KB
                                    
                                    package 'strucchange' successfully unpacked and MD5 sums checked
                                    
                                    The downloaded binary packages are in
                                    C:\Users\Alunos\AppData\Local\Temp\RtmpC8tHrI\downloaded_packages
                                    > library(strucchange)
                                    Carregando pacotes exigidos: zoo
                                    
                                    Attaching package: 'zoo'
                                    
                                    The following objects are masked from 'package:base':
                                      
                                      as.Date, as.Date.numeric
                                    
                                    Carregando pacotes exigidos: sandwich
                                    > library(readxl)
                                    > BITCOIN <- read_excel("C:/Econometria/Bitcoin.xls")
                                    Error in read_fun(path = path, sheet_i = sheet, limits = limits, shim = shim,  : 
                                                        Failed to open C:/Econometria/Bitcoin.xls
                                                      > BITCOIN <- read_excel("C:/Econometria/Bitcoin.xls")
                                                      > Bitcoin <- ts <- ts(BITCOIN$Close, start = 2018, frequency = 365)
                                                      Error in ts(BITCOIN$Close, start = 2018, frequency = 365) : 
                                                        'ts' object must have one or more observations
                                                      In addition: Warning message:
                                                        Unknown or uninitialised column: 'Close'. 
                                                      > plot(Bitcoin)
                                                      Error in plot(Bitcoin) : object 'Bitcoin' not found
                                                      > Bitcoin <- ts <- ts(BITCOIN$Close, start = 2018, frequency = 365)
                                                      Error in ts(BITCOIN$Close, start = 2018, frequency = 365) : 
                                                        'ts' object must have one or more observations
                                                      In addition: Warning message:
                                                        Unknown or uninitialised column: 'Close'. 
                                                      > BITCOIN <- read_excel("C:/Econometria/Bitcoin.xls")
                                                      > Bitcoin <- ts <- ts(BITCOIN$Fechar, start = 2018, frequency = 365)
                                                      > plot(Bitcoin)
                                                      > chow <- Fstats(Bitcoin~1)
                                                      > sctest(chow)
                                                      
                                                      supF test
                                                      
                                                      data:  chow
                                                      sup.F = 418.94, p-value < 2.2e-16
                                                      
                                                      > plot(Bitcoin)
                                                      > lines(breakpoints(chow))
                                                      > plot(chow)
                                                      > bp_ts <- breakpoints(Bitcoin ~ 1)
                                                      > bp_ts
                                                      
                                                      Optimal 5-segment partition: 
                                                        
                                                        Call:
                                                        breakpoints.formula(formula = Bitcoin ~ 1)
                                                      
                                                      Breakpoints at observation number:
                                                        65 109 160 212 
                                                      
                                                      Corresponding to breakdates:
                                                        2018.175 2018.296 2018.436 2018.578 
                                                      > summary(bp_ts)
                                                      
                                                      Optimal (m+1)-segment partition: 
                                                        
                                                        Call:
                                                        breakpoints.formula(formula = Bitcoin ~ 1)
                                                      
                                                      Breakpoints at observation number:
                                                        
                                                        m = 1   65                
                                                      m = 2   51         190    
                                                      m = 3   65 108     189    
                                                      m = 4   65 109 160 212    
                                                      m = 5   65 109 160 203 247
                                                      
                                                      Corresponding to breakdates:
                                                        
                                                        m = 1   2018.17534246575                                                                    
                                                      m = 2   2018.13698630137                                   2018.51780821918                 
                                                      m = 3   2018.17534246575 2018.29315068493                  2018.51506849315                 
                                                      m = 4   2018.17534246575 2018.29589041096 2018.43561643836 2018.57808219178                 
                                                      m = 5   2018.17534246575 2018.29589041096 2018.43561643836 2018.55342465753 2018.67397260274
                                                      
                                                      Fit:
                                                        
                                                        m   0      1      2      3      4      5     
                                                      RSS 1087.6  443.1  230.7  212.7  186.2  183.5
                                                      BIC 1217.7  968.6  790.6  778.4  751.3  758.2
                                                      > plot(Bitcoin)
                                                      > lines(bp_ts)
                                                      > fm0 <- lm(Bitcoin ~ 1)
                                                      > fm1 <- lm(Bitcoin ~ breakfactor(bp_ts, breaks = 1))
                                                      > fm2 <- lm(Bitcoin ~ breakfactor(bp_ts, breaks = 2))
                                                      > fm3 <- lm(Bitcoin ~ breakfactor(bp_ts, breaks = 3))
                                                      > fm4 <- lm(Bitcoin ~ breakfactor(bp_ts, breaks = 4))
                                                      > plot(Bitcoin)
                                                      > lines(ts(fitted(fm0), start = 2014, freq=365), col = 3)
                                                      > lines(ts(fitted(fm1), start = 2014, frequency=365), col = 4)
                                                      > lines(ts(fitted(fm2), start = 2014, frequency=365), col = 1)
                                                      > lines(bp_ts)
                                                      > MIO1 <- diff(Bitcoin)
                                                      > plot(MIO1)
                                                      > lines(ts(fitted(fm0), start = 2018, freq=365), col = 3)
                                                      > lines(ts(fitted(fm1), start = 2018, frequency=365), col = 4)
                                                      > lines(ts(fitted(fm2), start = 2018, frequency=365), col = 1)
                                                      > lines(bp_ts)
                                                      > plot(Bitcoin)
                                                      > lines(ts(fitted(fm0), start = 2014, freq=365), col = 3)
                                                      > lines(ts(fitted(fm0), start = 2018, freq=365), col = 3)
                                                      > lines(ts(fitted(fm1), start = 2018, frequency=365), col = 4)
                                                      > lines(ts(fitted(fm2), start = 2018, frequency=365), col = 1)
                                                      > lines(bp_ts)
                                                      > MIO1 <- diff(Bitcoin)
                                                      > plot(MIO1)
                                                      