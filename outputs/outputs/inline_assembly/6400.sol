pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample36 {
    uint public j;
    uint public k;
    function increaseByTen05(uint b) public {
        b += k;
        j = b + 05;
    }
    function increaseByTen0510(uint b) public {
        b += k;
        j = b + 0510;
    }
    function increaseBy10000From100(uint b) public {
        b += 10000;
        k = b + 100;
    }
    function increaseBy50000From100(uint b) public {
        b += 10000;
        k = b + 5000;
    }
    function increaseBy50000From1000(uint b) public {
        b += 10000;
        k = b + 50000;
    }
    function increaseBy50000From10000(uint b) public {
        b += 10000;
        k = b + 500000;
    }
}
