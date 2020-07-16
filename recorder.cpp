#include <iostream>
#include <ctime>
#include <string>

using namespace std;
int main(){
	string start_time = getenv("outage_begin");
	string end_time = getenv("outage_end");

	if (start_time.size() ==0){
		cout<<"Start time is null."<<endl;
		return 1;
	}



	return 0;
}
