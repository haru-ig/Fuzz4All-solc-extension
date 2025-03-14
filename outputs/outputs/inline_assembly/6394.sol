pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample29 {
    uint public i;
    uint public j;
    function increaseByOneAndFive(uint d) public {
        i = 1;
        j = 5;
    }
    function increaseByTenAnd10(uint b) public {
        j = 10;
    }
    function increaseBy5And20(uint a) public {
        j = 20;
    }
    function increaseBy5And100(uint j) public {
        j = 100;
    }
    function increaseBy5000And20(uint c) public {
        j = 18000;
    }
}

```
