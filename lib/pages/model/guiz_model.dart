class Guiz {
  const Guiz(this.question, this.answer);

  final String question;
  final bool answer;
}

const q1 = Guiz('Kyrgyzstanda 7 oblast barby? ', true);
const q2 = Guiz('Messi oz komandasynda kalaby ?', false);
const q3 = Guiz('jer shar formasyndaby?', true);
const q4 = Guiz('Osh Kyrgyzstandyn borborubu ?', false);
const q5 = Guiz('Bir koryp syiyp kalsa bolobu?', true);
const q6 = Guiz('Menin tuulgan kynym 4-fevralby ?', false);
const q7 = Guiz('Нил дуйнодогу эн узун дарыябы ?', true);
const q8 = Guiz('Programist bolgyn kelebi  ?', true);
const q9 = Guiz('Syimyk byiyl yilonoby?', false);

// generik ===> <> Belgiluu bir tip beruu uchun koldonulat
const quizzes = <Guiz>[q1, q2, q3, q4, q5, q6, q7, q8, q9];
