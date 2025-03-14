pragma solidity ^0.8.0;
contract Mutators16Mutated6 {
    uint public a;
    constructor (uint Y) public {
        a = Y * 3;
    }
    function increment (uint _returnData) public returns (uint) {
        a += 4;
        return a / 2;
    }
}
contract Mutators17Mutated4 {
    uint public a;
    constructor (uint Y) public {
        a = Y * 3;
    }
    function increment (uint _returnData) public returns (uint) {
        a += 4;
        a += 8;
        return a;
    }
}
contract Mutators18Mutated5 {
    uint public a;
    uint256 public b;
    constructor (uint Z) public {
        a = Z;
        b = 2 * a;
    }
    function increment (uint _returnData) public returns (uint) {
        a += 3;
        a += 2;
        a += 3;
        b += 1;
        return b;
    }
}
contract Mutators19Mutated5 {
    uint public a;
    uint256 public b;
    constructor (uint X, uint Y) public {
        a = X;
        b = X * Y;
    }
    function increment (uint _returnData) public returns (uint) {
        a += 6;
        a += 5;
        a += 6;
        b += 1;
        return b;
    }
}
