#include <iostream>
#include "function.h"
#include <fstream>
#include <map>
#include <string>

using namespace std;

int main()
{
    ifstream input("input.txt");
    ofstream output("output.txt");
    map<string, int> wordf;
    string most;
    int max = 0;

    if (!input.is_open()) 
    {
        cout << "Ошибка";
        return 1;
    }

    input.close();

    for (const auto& pair : wordf) 
    {
        cout << pair.first << ": " << pair.second << "\n";
    }

    for (const auto& pair : wordf)
    {
        if (pair.second > max) 
        {
            max = pair.second;
            most = pair.first;
        }
    }

    cout << "Наиболее часто встречающееся слово: " << most << "вот столько раз: "<< max << "\n";
 
    for (const auto& pair : wordf) 
    {
        output << pair.first  << pair.second << "\n";
    }
    cout << "Наиболее часто встречающееся слово: " << most << "вот столько раз: " << max << "\n";

    output.close();

    return 0;
}
