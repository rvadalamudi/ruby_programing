#include <iostream>
#include <cmath>

using namespace std;

class Cpoly {
protected:
	int a,b;
public:
	void set_side(int , int );
	virtual int area() { return (a); }
};

void Cpoly::set_side(int m,int n)
{
	a = m;
	b = n;
}

class Crect : public Cpoly {
public:
	int area() { return(a*b); }
};

int main ()
{
	Crect z;
	Cpoly x;
	x.set_side(3,4);
	z.set_side(3,4);
	cout << x.area() << " : " << z.area() << endl;
	return 0;
}

