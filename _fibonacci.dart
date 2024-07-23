void main() {
    print('Hello world!');

    for (var i = 1; i <= 10; i++) {print(i);}
    
    var i = 20;
    print('fibonacci($i) = ${fibonacci(i)}');
}

// functions
/// Computes the nth Fibonacci number.
int fibonacci(int n) {
    return n < 2 ? n : (fibonacci(n-1) + fibonacci(n-2));
}