#include <iostream>
#include <stdio.h>
#include <string.h>
#include "fileParser.h"
using namespace std;


void searchN (int row,int col, const char *searchWord, const char ** wordMatrix,bool ** mask)
{
int counter=0;
	for (int i=0; i<strlen(searchWord);i++)
	{
		if (wordMatrix[row-i][col]==searchWord[i])
		{
			counter++;
		}


	}
if (counter==strlen(searchWord))
{
	for (int k=0;k<strlen(searchWord);k++)
	{
		mask[row-k][col]=true;
	}
}
}
void searchS (int row,int col, const char *searchWord, const char ** wordMatrix,bool ** mask){
int counter=0;
	for (int i=0; i<strlen(searchWord);i++)
	{
		if (wordMatrix[row+i][col]==searchWord[i])
		{
			counter++;
		}


	}
if (counter==strlen(searchWord)){
	for (int k=0;k<strlen(searchWord);k++)
	{
		mask[row+k][col]=true;
	}
}
}
void searchE (int row,int col, const char *searchWord, const char ** wordMatrix,bool ** mask){
int counter=0;
	for (int i=0; i<strlen(searchWord);i++)
	{
		if (wordMatrix[row][col+i]==searchWord[i])
		{
			counter++;
		}


	}
if (counter==strlen(searchWord)){
	for (int k=0;k<strlen(searchWord);k++)
	{
		mask[row][col+k]=true;
	}
}
}
void searchW (int row,int col, const char *searchWord, const char ** wordMatrix,bool ** mask){
int counter=0;
	for (int i=0; i<strlen(searchWord);i++)
	{
		if (wordMatrix[row][col-i]==searchWord[i])
		{
			counter++;
		}


	}
if (counter==strlen(searchWord)){
	for (int k=0;k<strlen(searchWord);k++)
	{
		mask[row][col-k]=true;
	}
}
}
void searchNE (int row,int col, const char *searchWord, const char ** wordMatrix,bool ** mask)
{
int counter=0;
	for (int i=0; i<strlen(searchWord);i++)
	{
		if (wordMatrix[row-i][col+i]==searchWord[i])
		{
			counter++;
		}


	}
if (counter==strlen(searchWord))
{
	for (int k=0;k<strlen(searchWord);k++)
	{
		mask[row-k][col+k]=true;
	}
}
}

void searchNW (int row,int col, const char *searchWord, const char ** wordMatrix,bool ** mask){
int counter=0;
	for (int i=0; i<strlen(searchWord);i++)
	{
		if (wordMatrix[row-i][col-i]==searchWord[i])
		{
			counter++;
		}


	}
if (counter==strlen(searchWord)){
	for (int k=0;k<strlen(searchWord);k++)
	{
		mask[row-k][col-k]=true;
	}
}
}
void searchSE (int row,int col, const char *searchWord, const char ** wordMatrix,bool ** mask){
int counter=0;
	for (int i=0; i<strlen(searchWord);i++)
	{
		if (wordMatrix[row+i][col+i]==searchWord[i])
		{
			counter++;
		}


	}
if (counter==strlen(searchWord))
{
	for (int k=0;k<strlen(searchWord);k++)
	{
		mask[row+k][col+k]=true;
	}
}
}
void searchSW (int row,int col, const char *searchWord, const char ** wordMatrix,bool ** mask){
int counter=0;
	for (int i=0; i<strlen(searchWord);i++)
	{
		if (wordMatrix[row+i][col-i]==searchWord[i])
		{
			counter++;
		}


	}
if (counter==strlen(searchWord))
{
	for (int k=0;k<strlen(searchWord);k++)
	{
		mask[row+k][col-k]=true;
	}
}
}

void search(int row,int col, const char *searchWord, const char ** wordMatrix,bool ** mask)
{
	int len=strlen(searchWord);
	
	{
if ((row-(len+1)>=0)){  
	
searchN (row, col, searchWord, wordMatrix,mask);
} 

if ((row+(len+1)>=0)){
searchS (row, col, searchWord, wordMatrix,mask);
}

if((col+(len+1)>=0)){

searchE (row, col, searchWord, wordMatrix,mask);
}
if ((col-(len+1)>=0)){
searchW (row, col, searchWord, wordMatrix,mask);
}

if ((col-(len+1)>=0) && (row-(len+1)>=0)){
	
searchNW (row, col, searchWord, wordMatrix,mask);	
}
if ((col+(len+1)>=0)&& (row-(len+1)>=0)){
	
searchNE (row, col, searchWord, wordMatrix,mask);	
}
if ((col+(len+1)>=0)&& (row+(len+1)>=0)){

searchSE (row, col, searchWord, wordMatrix,mask);
}
if ((col-(len+1)>=0)&& (row+(len+1)>=0)){

searchSW (row, col, searchWord, wordMatrix,mask);
}
}
// demonstrates how to handle arguments and
// read the word matrix file to use the matrix.
//
// compile this file using:
// g++ -o readFile readFile.cpp fileParser.cpp 
int main( int argc, const char* argv[])
{

	string REDF = "\033[31m";
	string RESET  = "\033[0m";
    
  // this loops through arguments after the command name
  for (int i = 1 ; i < argc; ++i) {
    int j = 0;
    // this loops through the whole string
    // one character at a time.
    while (argv[i][j] != '\0') {
      // print character j of argument i 
      // followed by a space
      cout << argv[i][j] << " ";
      // increment the character position.
      ++j;
    } 
    // print a newline after string
    cout << endl;
    
  }

  // this demonstrates reading the file
  // into a 2d char array using the 
  // helper function parseFile
  int rows; // this is initialized by parseFile
  int cols; // this is initialized by parseFile
  char** words =  parseFile(rows,cols);
  bool **referenceMatrix = new bool*[rows];
  for (int i = 0; i < rows; ++i) {
	  referenceMatrix[i] = new bool[cols];
  }
  int k = 1;
  for(int i = 0; i < rows; ++i) {
    for(int j = 0; j < cols; ++j) {
      // print each character followed by a space
      cout << words[i][j] << " ";
      if (argv[k][0]==words[i][j]) {
      	search(i,j,argv[k],(const char**)words,referenceMatrix);
      }
    }
    // print a newline after each row
    cout << endl;
  }
for(int i=0;i<rows;i++)
{
		for(int j = 0; j < cols; ++j) {
		if(referenceMatrix[i][j]) {
			cout << REDF <<words[i][j] << " "<<RESET;
		//	cout<<RESET;
		}
		else
		{
			cout<<RESET<<words[i][j];
		}
	}
	cout<<endl;
}

return 0;
}

