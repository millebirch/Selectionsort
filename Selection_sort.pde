//1.) input LISTE af tal

//2.) STARTINDEX sættes til plads 0

//3.) Finder vi mindste tal index MIN-INDEX i resten af arrayet

//4.) Sammenlign indhold MIN-INDEX < indhold på STARTINDEX

//        5.) Hvis JA : byt rundt

//        6.) Hvis NEJ : ingenting

//7.) STARTINDEX tælles en op, hvis STARTINDEX < LISTE længden gentag fra punkt 3.



void setup() {
  int[] liste = {5, 4, 3, 8, 2, 47, 6};
  sorter(liste);
  println(liste);
}


void sorter(int[] liste) {  //Det her er punkt 1
  //Int startIndex = 0; //det her er punkt 2

  for (int startIndex = 0; 
    startIndex < liste.length; 
    startIndex++) {


    int minIndex = findMinIndex(liste, startIndex); //Punkt 3 er lavet her
    if (liste[minIndex] < liste[startIndex]);
    { //Punkt 4
      byt(liste, minIndex, startIndex); //Punkt 5
    }
  }
}

void byt(int[] liste, int pladsA, int pladsB) {
  int indholdA = liste[pladsA];
  int indholdB = liste[pladsB];
  liste[pladsA] = indholdB;
  liste[pladsB] = indholdA;
}


int findMinIndex(int[] liste, int startIndex) {
  int indholdMin = liste[startIndex];
  int pladsMin = startIndex;

  for (int i = startIndex; i < liste.length; i++) {
    if (liste[i] < indholdMin); 
    {
      indholdMin = liste[i];
      pladsMin = i;
    }
  }
  return pladsMin;
}
