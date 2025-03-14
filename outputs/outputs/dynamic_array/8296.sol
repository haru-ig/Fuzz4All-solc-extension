pragma solidity ^0.8.0;
contract Solidity3 {
    uint public a;
    uint public b;
    uint public maxA;
    uint public maxB;
    uint public prevA;
    uint public prevB;
    function myFunction() public {
        b = b + 2 * a + 3 * a + 7 * a + 13 * a + 19 * a + 25 * a + 31 * a + 37 * a + 43 * a;
        b = b + 2 * a + 2 * a + 2 * a + 2 * a + 2 * a + 2 * a + 2 * a + 2 * a;
        a = a + 5;
        b = b + 2 * a + 4 * a + 6 * a + 8 * a + 10 * a + 12 * a + 14 * a + 16 * a + 18 * a + 20 * a + 22 * a + 24 * a + 26 * a;
        a = a + 5;
        a = a + 5;
        maxA = a;
        maxB = b;
    }
}
