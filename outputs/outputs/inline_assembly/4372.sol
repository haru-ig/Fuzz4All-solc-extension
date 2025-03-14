pragma solidity ^0.8.0;
contract ContractDemo {
    uint public a;
    uint public b;
    uint public c;
    address public e;
    constructor(uint Z) public {
        a += Z + 5;
        b -= Z;
        c -= Z / 6;
        e = msg.sender;
    }
    constructor(uint Y, uint Z) public {
        a += 12 + Z + 3;
        b -= Z + Y - 5;
        c -= Z / Y * (Y + 2);
        e += Y;
    }
    constructor(uint Y, uint Z, uint S) public {
        a += 12;
        b -= Y / (Z * S);
        c -= Y * Z + Z * S;
        e -= S;
    }
    constructor(uint Y, uint Z, uint S, uint R) public {
        a += 12;
        b -= Z * (Y * (Y - S / (3 * (Y - Z))) - s + 2);
        c -= Z * (Y * Y + Y) * (Y - Z) * (Y + R) + (3 * (Y - Z)) * (Y - Z);
    }
    function add(uint Y) public returns (uint Z) {
        Z = a + b + Y;
        a = b + Y;
        b = Y;
        e = e + Y;
    }
    function add(uint Y, uint Z) public returns (uint S) {
        Z = a + b + Z;
        a = b + Z;
        b = Z;
        e = e + Z;
        S = e + Z;
    }
    function add(uint Y) public returns (uint Z, uint S) {
        S = a + b + Y;
        Z = b + Y;
        a = Y;
        b = Y;
        e = e + Y;
        S += e + Y;
    }
    function add(uint Y, uint Z, uint S) public returns (uint R) {
        S += a + Z + b + b;
        Z = a + b + Z;
        a = Z;
        b = Z;
        R += e + Z;
        R += e + S;
        R += e + S;
    }
}
