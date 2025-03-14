pragma solidity ^0.8.0;
contract Mutant {


    modifier positiveReturn(int _v) {
        _;
    }
    function simpleReturn() {
        return;
    }



    function simpleCheckReturn()
        positiveReturn(-42)
        positiveReturn(0)
        positiveReturn(256 - 1)
        positiveReturn(-1)
        positiveReturn(-2)
        positiveReturn(1)
        positiveReturn(5)
        positiveReturn(2)
    {
        return;
    }

    function simpleCheckReturns()
        positiveReturn(1)
        positiveReturn(0)
        positiveReturn(5)
        positiveReturn(6)
    {
        return;
    }
}

contract Mutant_Bad {


    modifier positiveReturn(int _v) {
        _;
    }
    function simpleReturn() {
        return;
    }



    function simpleCheckReturn()
        positiveReturn(-42)
        positiveReturn(-42)
        positiveReturn(0)
        positiveReturn(256 - 1)
        positiveReturn(-1)
        positiveReturn(-2)
        positiveReturn(1)
        positiveReturn(5)
        positiveReturn(2)
    {
        return;
    }

    function simpleCheckReturns()
        positiveReturn(1)
        positiveReturn(0)
        positiveReturn(5)
        positiveReturn(6)
    {
        return;
    }
}
