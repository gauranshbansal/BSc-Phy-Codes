#include <iostream>
#include <cmath>
using namespace std;

int main()
{
    double a, b, c, x1, x2, D;
    
    cout << "Welcome to Quadratic Calculator!\n";
    cout << "Enter the coefficients a, b, and c of the given equation:\n";
    cout << "a = "; cin >> a;
    cout << "b = "; cin >> b;
    cout << "c = "; cin >> c;
    
    cout << "\nFormula used for reference: b^2 - 4ac\n";
    D = b * b - (4 * a * c);

    if (D > 0) {
        x1 = (-b + sqrt(D)) / (2 * a);
        x2 = (-b - sqrt(D)) / (2 * a);
        cout << "\nRoots are real and different\n";
        cout << "First root (x1) = " << x1 << endl;
        cout << "Second root (x2) = " << x2 << endl;
    }
    else if (D == 0) {
        x1 = (-b / (2 * a));
        cout << "\nRoots are real and the same\n";
        cout << "x1 = x2 = " << x1 << endl;
    }
    else {
        cout << "\nRoots are complex\n";
    }

    return 0;
}
