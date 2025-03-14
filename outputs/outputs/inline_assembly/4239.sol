pragma solidity ^0.8.0;
contract Mutators14Mutated2 {
    uint public a;
    constructor (uint Y) public {
        a = Y * 3;
    }
    function increment (uint _returnData) public returns (uint) {
        return (a + 1);
    }
}
pragma solidity ^0.8.0;
contract Mutators15Mutated2 {
    uint public a;
    constructor (uint Y) public {
        a = Y * 3;
    }
    function increment (uint _returnData) public returns (uint) {
        a += 4;
        return a;
    }
}
