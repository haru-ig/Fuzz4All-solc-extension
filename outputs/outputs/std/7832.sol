pragma solidity ^0.8.0;
contract Moved {
    function printMultiples(uint x, uint b) public pure {
        if ((b > 1) && (b > x)) {
            printMultiples(x, b - 2);
        }
        else if ((b > 1) && (b > x) && (b < x)) {
            x += x / b;
            printMultiples(x, b - 1);
        }
        else if ((b > 1) && (x < 40)) {
            x += x / b;
            b *= 2;
            printMultiples(x, b);
        }
        else {
            print(x);
        }
    }

    function print(uint x) public pure {
        x *= 2;
        uint y = x * 2;
        uint z = x + x * x;
        uint q = x > y? x : y;
        printMultiples(z, 40);
        x += uint(y > x);
        print(z / x);
    }
}
