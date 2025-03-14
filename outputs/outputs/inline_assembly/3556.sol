pragma solidity ^0.8.0;
contract ChangeGenerationsUsingYulWithoutSemantics {
    address public a;
    address public b;
    address public c;
    address public d;
    address public e;
    address public f;
    function change2 (address v) public {
        assembly{
        a := 1
        a := 2
        a := a
        a := a
        a := a
        a := a
        a := a
        a := b
        a := b
        a := a
        a := a
        a := a
        a := a
        a := a
        a := a
        a := a
        a := a
        }
    }
}


contract ResultStorage {

    uint public gasUsedForChangeFunction;
}

contract ResultStorageB {

    uint public gasUsedForChangeFunction;
}

contract ResultStorageC {

    uint public gasUsedForChangeFunction;
}

contract ChangeGenerationsUsingYulWithSemantics is ResultStorage, ResultStorageB, ResultStorageC {






    uint[] results;

    constructor() public {
        gasUsedForChangeFunction = 500;
        uint b = change2(address(this));
        results[0] = 1;

        uint c = ChangeGenerationsUsingYulWithSemantics.change2(address(this));
        results[1] = 2;

        uint d = ChangeGenerationsUsingYulWithSemantics.change2(address(new ChangeGenerationsUsingYulWithSemantics()));
        results[2] = 3;

        uint e = ChangeGenerationsUsingYulWithSemantics.change2(address(new ChangeGenerationsUsingYulWithSemantics()));
        results[3] = 4;
    }


    uint public change2 (address v) public
