pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample29 {
    uint public i;
    uint public j;
    uint public k;
    function increaseByOneAndTen(uint d) public {
        i++;
        j = j + 10;
    }
    function decreaseByTenAnd10(uint b) public {
        j = j - 10;
    }
    function decreaseByTenAnd20(uint a) public {
        j = j - 20;
    }
    function decreaseBy100And10(uint w) public {
        j = j - 10;
    }
    function decreaseBy5000And20(uint c) public {
        j = j - 20;
    }
}
