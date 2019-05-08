#include <iostream>
#include <string>
#include <locale>



int main() {
	std::locale loc;
	std::string str1, str2, str3, str4;
	char run = 3;
	while (run == 3) {
		std::string word, ans, str1, str2;
		std::cout << "Enter a word to translate to Pig Latin: ";
		std::cin >> word;
		str1 = word.substr(0,1);
		str2 = word.substr(1,1);
		str3 = word.substr(2);
		str4 = str2 + str3 + str1 + "ay";
		std::cout << "Translation: ";
		for (int i=0; i<str4.length(); ++i){
		std::cout << std::tolower(str4[i],loc);
		}
		std::cout << std::endl;
		std::cout << "Would you like to translate another word? (Yes/No): ";
		std::cin >> ans;
		run = ans.size();
	}
}
