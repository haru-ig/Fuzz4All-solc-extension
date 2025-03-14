pragma solidity ^0.8.0;
contract Computation
{
    uint public a;
    uint public b;
    mapping(uint => bool) public isPrime;
    constructor() {
        a = 10;
        b = 2;
    }
    function mul() public {
        a = b * a;
        b = a * b;
    }
    function nextPrime(uint y) public view {
        isPrime[y] = false;
        uint a = y;
        while (a > 1) {
            if (a == 2) {
                isPrime[y] = false;
            } else if (a % 2 == 0 && y % 2!= 0) {
                isPrime[y] = false;
            } else if (y % 2!= 0) {
                a = a / 2;
                while (y % 2 == 0) {
                    y = y / 2;
                }
            } else {
                a = a / 2;
            }
        }
    }
}



pragma solidity 0.8.0;
contract Computation {
    uint public a;
    uint public b;
    uint4 b;
    constructor() {
        a = 10;
        b = 2;
    }
    function mul() public {
        a = b * a;
        b = a * b;
    }
    function nextPrime(uint y) public view {
        b = y;
        uint a = y;
        while (a > 1) {
            if (a == 2) {
                b = 1;
            } else if (a % 2 == 0 && b % 2!= 0) {
                b = 1;
            } else if (b % 2!= 0) {
                a = a / 2;
                while (a!= 1 && b % 2 == 0) {
                    a = a / 2;
                }
            } else {
                a = a / 2;
            }
        }
    }
}
