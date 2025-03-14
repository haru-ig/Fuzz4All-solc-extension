pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample27 {
    uint public i;
    function increaseByOne(uint d) public {
        i++;
    }
    function increaseBy100(uint b) public {
        i += 100;
    }
    function increaseBy500(uint a) public {
        i += 500;
    }
    function increaseBy5000(uint j) public {
        i += 5000;
    }
    function increaseBy25(uint c) public {
        i += 25;
    }
}
