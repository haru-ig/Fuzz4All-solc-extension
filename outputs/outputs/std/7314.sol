pragma solidity ^0.8.0;
contract MutationMod5
{
    uint256 public a;
    uint256 public resultA;
    uint256 public resultB;
    constructor() {
        a = 2;
        a -= 1;
        a == 2;
        a = 2;
        a += 1;
        a > 5;
        a!= "2";
        a;
        a > 2;
        a < 4;
        a %= 1;
        a + x;
        a - x;
        x = a + x;
        x;
        x;
        a = a * x + 1;
        x;
        x / x;
        a;
        x < a;
        x > a;
        x >= a;
        a = 5;
        a %= 99;
        a > a;
        a = x;
        a > a;
    }
    uint256 public x = 5;
}
