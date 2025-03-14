pragma solidity ^0.8.0;
contract Mutators13Mutated {
    uint public a;
    constructor (uint Y) public {
        a = Y;
    }
    function increment (uint _returnData) public returns (uint) {
        a += 1;
        return _returnData;
    }
}

pragma solidity ^0.8.0;

contract Mutators13Mutated {
    uint public a;

    constructor (uint Y) public {
        a = Y;
    }
    function increment (uint _arg) public returns (uint) {
        assembly {
            a += _arg
        }
        return a;
    }
}
