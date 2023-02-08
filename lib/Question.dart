



class Question{
 String word1;
 String word2;
 String word3;
 String word4;
 String question;
 String click;
 Question({required this.word1, required this.word2, required this.word3, required this.word4,required this.question,required this.click});
}



 List<Question> lisques=[
Question(word1: 'Black', word2: 'Green', word3: 'Blue', word4: 'yellow', question: 'What is yourfavourite color?', click: '/second'),
Question(word1: "Rabbit", word2: "Tiger", word3: "Elephant", word4: "Lion", question: "What is yourfavourite animal?", click: '/third'),
Question(word1: "Math", word2: "Biology", word3: "Chemistry", word4: "Germany", question: "What is yourfavourite subject?", click: '/fourth'),
];


