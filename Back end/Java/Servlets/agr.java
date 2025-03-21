/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author rgukt
 */

import java.util.ArrayList;
import java.util.List;

// Question class to hold each question and its correct answer
class Question {
    private final String question;
    private final String correctAnswer;

    public Question(String question, String correctAnswer) {
        this.question = question;
        this.correctAnswer = correctAnswer;
    }

    public String getQuestion() {
        return question;
    }

    public String getCorrectAnswer() {
        return correctAnswer;
    }
}

// Quiz class to manage quiz questions and results
public class agr {
    private final List<Question> questions;
    private int score;

    public agr() {
        questions = new ArrayList<>();
        score = 0;
        // Add questions to the quiz
        questions.add(new Question("What is the capital of France?", "Paris"));
        questions.add(new Question("Which planet is known as the Red Planet?", "Mars"));
        questions.add(new Question("Who wrote 'To Kill a Mockingbird'?", "Harper Lee"));
    }

    // Method to evaluate answers and calculate score
    public void evaluate(String[] answers) {
        for (int i = 0; i < questions.size(); i++) {
            if (questions.get(i).getCorrectAnswer().equalsIgnoreCase(answers[i])) {
                score++;
            }
        }
    }

    // Method to display quiz questions
    public void displayQuestions() {
        for (int i = 0; i < questions.size(); i++) {
            System.out.println((i + 1) + ". " + questions.get(i).getQuestion());
        }
    }

    // Method to get the quiz score
    public int getScore() {
        return score;
    }

    // Main method to run the quiz
    public static void main(String[] args) {
        agr quiz = new agr();
        quiz.displayQuestions();
        // Simulating user input (answers)
        String[] userAnswers = {"Paris", "Mars", "Harper Lee"};
        quiz.evaluate(userAnswers);
        System.out.println("Your score: " + quiz.getScore() + "/" + quiz.questions.size());
    }
}

    

