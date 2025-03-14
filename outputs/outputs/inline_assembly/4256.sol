pragma solidity ^0.8.0;
contract Mutators15SemanticallyEquivalentMutated3 {
    function callfunction () returns (uint)
        pure
    {
        return 1;
    }
    uint8 a;
    uint8 public constant b = 3;
    constructor () public {
        a = 3;
    }
    function g_modifier () public returns (uint) {

        a = (a + callfunction()) / a;
        emit NewA(a);
        return a;
    }
    function emitNew (uint X) public {
        emit NewA(X);
    }
    function getA () public returns (uint) {
        uint i = a;
        return a;
    }
}


contract Mutators16IncorrectMutator {
    uint public a;
    uint public b;
    constructor (uint Y, uint8 X) public {
        a = Y + X;
        b = Y * a;
    }
    function add (uint X) public returns (uint) {
       return (a + b);
    }
}

pragma solidity ^0.8.0;
contract Mutators17CorrectMutator {
    using Mutators16IncorrectMutator for Mutators16IncorrectMutator;
    uint public a;
    uint public b;

    constructor (uint Y, uint8 X) public {
        a = Y + X;
        b = Y * a;
    }


    function add (uint X) public returns (uint) {
        return (a + b);
    }
    function addb (uint b) public returns (uint) {
        return (a + b);
    }
    function addbb (uint bb) public returns (uint) {
        return (a + b + bb);
    }
}
/* Please create a short program which mutates a single function and then adds and subtracts. This program
will create a Mutators19CorrectMutator contract.
