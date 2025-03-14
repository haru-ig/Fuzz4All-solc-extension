pragma solidity ^0.8.0;
contract Mutators16SemanticallyEquivalentMutated3 {
    uint public a;
    constructor (uint Y) public {
        a = Y / 3;
    }
    function increment (uint _returnData) public returns (uint) {
        return (_returnData * 3);
    }
}
