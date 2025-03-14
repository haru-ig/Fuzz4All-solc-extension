pragma solidity ^0.8.0;
contract C {
    uint public z = 0;
    uint public a;
    uint public x;
        constructor() public {
        a = 3;
        a = a - 1;
        a = a + 1;
        z = a;
        z += 1;
        z -= 1;
        z -= a;
        z *= 2;
        z = a;
        z /= 2;
        z /= a;
        z = a;
        z %= 2;
        z <<= 2;
        z >>= 2;
        z = z << z >> 1;
        z >>= a;
        z >>= 1;
    }
}
