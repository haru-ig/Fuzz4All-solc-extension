pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample29 {
    uint public i;
    uint public j;
    uint public k;
    function increaseByOneAndTen(uint d) public {
        i = i + 1;
        j = j + 10;
    }
    function increaseByFiveAndTen(uint d) public {
        i = i + 5;
        j = j + 10;
    }
    function increaseByTenAnd10(uint b) public {
        j = j + 10;
    }
    function increaseByFiveAndTen(uint a) public {
        j = j + 5;
    }
    function increaseBy100And20(uint j) public {
        j = j + 20;
    }
    function increaseByTenAnd10(uint w) public {
        j = j + 10;
    }
    function increaseBy100And5(uint b) public {
        j = j + 5;
    }
    function increaseBy100And5(uint c) public {
        j = j + 10;
    }
    function increaseByTenAnd5(uint c) public {
        j = j + 5;
    }
    function increaseBy100And100(uint j) public {
        j = j + 100;
    }
    function increaseByTenAnd10(uint c) public {
        j = j + 10;
    }
}
