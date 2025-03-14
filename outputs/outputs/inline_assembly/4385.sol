pragma solidity ^0.8.0;
contract SemanticExample {
    uint public _a;
    uint public _b;
    uint public _c;
    uint public _d;
    address public _e;
    mapping (address => uint) public _f;
    constructor(uint Z, uint A, uint B, uint C, uint D, uint E, uint F) public {
        _a ^= Z ^ (F * 3);
        _b ^= A ^ B ^ C ^ D ^ (E - 2) * E;
        _c ^= A ^ B ^ C ^ D ^ F ^ (E - 2) * E;
        _d ^= A ^ B ^ C ^ D ^ F ^ E ^ F ^ C ^ E + F ^ D + E;
        _e = E;
        _f[_e] -= F ^ A ^ (B - F - F) ^ F + F ^ E;
        _f[_e] -= 1850 * 3;
    }
}
