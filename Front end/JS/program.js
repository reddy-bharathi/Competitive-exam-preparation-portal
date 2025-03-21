/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Other/javascript.js to edit this template
 */

function submitQuiz() {
    const quizForm = document.getElementById('quizForm');
    const results = document.getElementById('results');

    const answers = {
        question1: 'C',
        question2: 'B',
        question3: 'D',
        question4: 'A',
        question5: 'C',
        question6: 'D',
        question7: 'B',
        question8: 'A',
        question9: 'C', 
        question10:'D'
    };

    let score = 0;
    let totalQuestions = Object.keys(answers).length;

    for (let question in answers) {
        const userAnswer = quizForm[question].value;
        console.log(userAnswer)
        if (userAnswer === answers[question]) {
            score++;
        }
    }
    console.log(score)
    results.innerHTML = `You scored ${score} out of ${totalQuestions}`;
}
