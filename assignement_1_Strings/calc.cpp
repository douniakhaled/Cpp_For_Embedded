 //************************************************ calc.cpp is to check the file extension and size of the input lines ******************************************//
#include<iostream>
#include "sstream"
using namespace std;

void linecheck(string input);
void extension_check(string extension,int size);
int music=0,movie=0,image=0,other=0;

int main()
{
   int test_cases;//number of test cases 
   int i,j;
   string input;//input string 

   cin>>test_cases;//gets the number of test cases
   int arr[test_cases];//array of integers with the number of test cases 
   int arr_final[test_cases][4];//2D array of the test cases and number of extensions to show the size of the (music,images,movies,other)

    
   for(i=0;i<test_cases;i++)//loop to take the number of lines in each test case 
   {
       cin>>arr[i];
   }
   

    
   getline(cin,input);

   for(i=0;i<test_cases;i++)// first loop for the test case 
   {
       music=image=movie=other=0;

       for(j=0;j<(arr[i]);j++)//second loop for the input lines in each test case  
       {
           getline(cin,input);//gets the input line 
           linecheck(input);//function which check the line size

       }
      
        arr_final[i][0]=music;//put the size of music
        arr_final[i][1]=image;//put the size of images
        arr_final[i][2]=movie;//put the size of movies
        arr_final[i][3]=other;//put the size of other
      

   }
    for(i=0;i<test_cases;i++)//loop to print the array that carry the size of the files 
   {

       cout<<"music "<<arr_final[i][0]<<"b"<<" images "<<arr_final[i][1]<<"b"<<" movies "<<arr_final[i][2]<<"b"<<" other "<<arr_final[i][3]<<"b"<<endl;
       
   }

return 0;
}

//********************************************************** line check function ***************************************************************//

// this function is to check the size of the file and the extension 
// 1-using stringstream to get the last space in the input string which is the size 
// 2-converts the size string to size in integer 
// 3-find the index of the " . " which indicates the extension of the file 
// 4-find the space index which indicates the end of the extension name 
// 5-put the extension in a string 

void linecheck(string input)
{
    int size_int;//we get the size from the string and then convert it to integer thats why there is (size_int ,size_str)
    string size_str,extension;

    stringstream ss(input);
    size_str =" ";
    while(ss>>size_str);//this takes the last space in the string(input line) and puts it in another string (size_str)

    stringstream size(size_str);
    size>>size_int;//to convert the size from string to integer 

   int index = input.rfind(".");//to get the index of the " . "
   int index_space=input.rfind(" ");//get the space index 
   
  
   extension =input.substr(index,index_space-index);//substr takes (start index,num of char in the substr)

   extension_check(extension,size_int);//call the extension check function 
   
}

//********************************************************** file extension function ***************************************************************//

// this function is to check the type of the extension it takes the size of the file and the extension name 
// 1-check the extension string equal to which one (music ,images,movies,other)
// 2-adding the size of the file to its extension

void extension_check(string extension,int size)
{
    if (extension == ".mp3" || extension == ".flac" || extension == ".aac")
    {
        music+=size;
    }
    else if (extension == ".jpg" || extension == ".bmp" || extension == ".gif")
    {
        image+=size;
    }
    else if (extension == ".mp4" || extension == ".avi" || extension == ".mkv")
    {
        movie+=size;
    }
    else 
    {
        other+=size;
    }
}