<%-- 
    Document   : bio
    Created on : 08-Jul-2024, 2:23:22 AM
    Author     : rgukt
--%>

<%-- 
    Document   : biologyquiz
    Created on : 07-Jul-2024, 10:08:01 PM
    Author     : rgukt
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Biology Quiz</title>
    <link rel="stylesheet" href="bio.css">
    <script src="bio.js"></script>
</head>
<body>
    <div class="quiz-container">
        <h1>Biology Quiz</h1>
        <form id="quizForm">
            <div class="quiz-question">
                <p>1. What is the powerhouse of the cell?</p>
                <label><input type="radio" name="question1" value="A"> A. Mitochondria</label><br>
                <label><input type="radio" name="question1" value="B"> B. Nucleus</label><br>
                <label><input type="radio" name="question1" value="C"> C. Golgi Apparatus</label><br>
                <label><input type="radio" name="question1" value="D"> D. Endoplasmic Reticulum</label>
            </div>
            <div class="quiz-question">
                <p>2. Which gas is produced during photosynthesis?</p>
                <label><input type="radio" name="question2" value="A"> A. Oxygen</label><br>
                <label><input type="radio" name="question2" value="B"> B. Carbon Dioxide</label><br>
                <label><input type="radio" name="question2" value="C"> C. Hydrogen</label><br>
                <label><input type="radio" name="question2" value="D"> D. Nitrogen</label>
            </div>
            <div class="quiz-question">
                <p>3. What is the largest organ in the human body?</p>
                <label><input type="radio" name="question3" value="A"> A. Liver</label><br>
                <label><input type="radio" name="question3" value="B"> B. Skin</label><br>
                <label><input type="radio" name="question3" value="C"> C. Kidney</label><br>
                <label><input type="radio" name="question3" value="D"> D. Heart</label>
            </div>
            <div class="quiz-question">
                <p>4. Which blood type is known as the universal donor?</p>
                <label><input type="radio" name="question4" value="A"> A. A</label><br>
                <label><input type="radio" name="question4" value="B"> B. B</label><br>
                <label><input type="radio" name="question4" value="C"> C. AB</label><br>
                <label><input type="radio" name="question4" value="D"> D. O</label>
            </div>
            <div class="quiz-question">
                <p>5. What is the largest cell in the human body?</p>
                <label><input type="radio" name="question5" value="A"> A. Nerve Cell</label><br>
                <label><input type="radio" name="question5" value="B"> B. Egg Cell</label><br>
                <label><input type="radio" name="question5" value="C"> C. Muscle Cell</label><br>
                <label><input type="radio" name="question5" value="D"> D. Skin Cell</label>
            </div>
            <div class="quiz-question">
                <p>6. Which vitamin is synthesized in the skin?</p>
                <label><input type="radio" name="question6" value="A"> A. Vitamin A</label><br>
                <label><input type="radio" name="question6" value="B"> B. Vitamin D</label><br>
                <label><input type="radio" name="question6" value="C"> C. Vitamin C</label><br>
                <label><input type="radio" name="question6" value="D"> D. Vitamin E</label>
            </div>
            <div class="quiz-question">
                <p>7. Which hormone is responsible for regulating blood sugar levels?</p>
                <label><input type="radio" name="question7" value="A"> A. Insulin</label><br>
                <label><input type="radio" name="question7" value="B"> B. Estrogen</label><br>
                <label><input type="radio" name="question7" value="C"> C. Testosterone</label><br>
                <label><input type="radio" name="question7" value="D"> D. Thyroxine</label>
            </div>
            <div class="quiz-question">
                <p>8. What is the process by which green plants make their own food?</p>
                <label><input type="radio" name="question8" value="A"> A. Respiration</label><br>
                <label><input type="radio" name="question8" value="B"> B. Digestion</label><br>
                <label><input type="radio" name="question8" value="C"> C. Photosynthesis</label><br>
                <label><input type="radio" name="question8" value="D"> D. Excretion</label>
            </div>
            <div class="quiz-question">
                <p>9. Which of these is not a part of the human digestive system?</p>
                <label><input type="radio" name="question9" value="A"> A. Stomach</label><br>
                <label><input type="radio" name="question9" value="B"> B. Lungs</label><br>
                <label><input type="radio" name="question9" value="C"> C. Small Intestine</label><br>
                <label><input type="radio" name="question9 that affects value="D"> D. Large Intestine</label>
            </div>
            <div class="quiz-question">
                <p>10. What is the smallest bone in the human body?</p>
                <label><input type="radio" name="question10" value="A"> A. Malleus</label><br>
                <label><input type="radio" name="question10" value="B"> B. Stapes</label><br>
                <label><input type="radio" name="question10" value="C"> C. Incus</label><br>
                <label><input type="radio" name="question10" value="D"> D. Femur</label>
            </div>
            <button type="button" onclick="submitQuiz()">Submit</button>
        </form>
        <div id="results"></div>
    </div>
</body>
</html>
