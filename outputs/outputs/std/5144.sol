pragma solidity ^0.8.0;

contract Person {
    uint256 public value = 0;
    string public name;
    uint256 public internalValue = 0;


    function sayMem() public pure {
        printf("%s\n0x%x", name, internalValue);
    }

    function sayMem2() public pure {
        printf("%s\n0x%x0x%x", name, internalValue, value);
    }

    function sayMem3() public pure {
        printf("%s\n0x%x0x%x0x", name, internalValue, value);
    }


    function sayMem4() public pure {
        name = "P";
        internalValue = 0x4444;
        value = 0x1234;
        printf("%s\n0x%x0x%x", name, internalValue, value);
    }


    function sayMem5() public pure {

        return 0;
    }


    function sayMem6() public pure {
        name = "P";
        internalValue = 0x4444;
        return value;
    }


    function sayMem7() public pure {
        name = "P";
        internalValue = 0x4444;
        return name;
    }


    function sayMem8() public pure returns (uint256) {
        return 0x8989;
    }
/*
The contract changes the name, the memory variable, and the internal variable.
The first part is fine. The second part and third part are confusing especially without careful analysis of both sides. The contract should have full understanding of the code and should be able to use the correct solution.

A good practice is to test both contract parts with testing code in other languages. It is important not to break any code of the other contract in the current contract. There are several rules about how to use the test, but the most common rule is that the contract
