pragma solidity ^0.8.0;
contract Mutators25SemanticallyEquivalentMutated3 {
    uint public a;
    uint public b;
    uint public c;
    constructor (uint Y) public {
        a = Y + 2;
        b = Y + 2;
        c = _mul(a, b);
    }
    function increment (uint _returnData) public returns (uint) {
        return (_returnData + 4);
    }
}
