#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

shinyUI(fluidPage(
    titlePanel("ABCD grade Calculator"),
    sidebarLayout(sidebarPanel(
        helpText("ABCD grade calulcator.",
                 br(),
                 "Please, input your:",
                 br(),
                 "1.1st Semister marks",
                 br(),
                 "2.2nd Semister Marks",
                 br(),
                 "3.Final Exam Marks",
                 br(),
                 "4.Practical Exam Marks",
                 br(),
                 "5.Sports Marks",
                 br(),
                 "6.Community Development marks"),
        sliderInput(
            inputId = "semi1",
            label = strong("1st Semister Marks"),
            min = 0,
            max = 100,
            value = 60
        ), 
#User 1st Semister marks input slider
        sliderInput(
            inputId = "semi2",
            label = strong("2nd Semister Marks"),
            min = 0,
            max = 100,
            value = 70
        ),
#User 2nd Semister marks input slider
        sliderInput(
            inputId = "final",
            label = strong("Final Exam Marks"),
            min = 0,
            max = 100,
            value = 80
        ), 
#User Final Exam marks input slider
        sliderInput(
            inputId = "pract",
            label = strong("Practical Exam Marks"),
            min = 0,
            max = 100,
            value = 60
        ), 
#User Practical Exam Marks input slider
        sliderInput(
            inputId = "sport",
            label = strong("Sports Marks"),
            min = 0,
            max = 100,
            value = 60
        ), 
#User Sports marks input slider
        sliderInput(
            inputId = "commd",
            label = strong("Community Development Marks"),
            min = 0,
            max = 100,
            value = 60
        ), 
        
#User Community Development marks input slider
        
        h5("ABCD grade calulcator will quantify the overall performance of indiviual assessment and give the grade based on the weight of each assessment.",
        br(),
        "The weights are:",
        br(),
        "1.1st Semister marks-20%",
        br(),
        "2.2nd Semister Marks-20%",
        br(),
        "3.Final Exam Marks-40%",
        br(),
        "4.Practical Exam Marks-10%",
        br(),
        "5.Sports Marks-5%",
        br(),
        "6.Community Development marks-5% "),
        
        h6("The app was created by Tamer Salem for Coursera Developing Data Products Course 9 week 4 Project")
    ),
    
    mainPanel(
        uiOutput("user_data"), #Text with the user data
        plotOutput("plot", height = "175px", width = "100%"), #Colorful plot of the user BMI
        uiOutput("results") #Text results
    ))
))