pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample28 {
    uint public i;
    uint public j;
    function increaseByOneAndFive(uint d) public {
        i = 1;
        j = 5;
    }
    function increaseByTenAnd10(uint b) public {
        i = 10;
        j = 10;
    }
    function increaseBy5And20(uint a) public {
        i = 5;
        j = 20;
    }
    function increaseBy5And100(uint j) public {
        i = 5;
        j = 100;
    }
    function increaseBy5000And20(uint c) public {
        i = 5000;
        j = 20;
    }
}
