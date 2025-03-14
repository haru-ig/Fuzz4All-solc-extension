pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample30 {
    uint public i;
    uint public j;
    constructor(uint x) public {
        i = x;
        j = x + 10;
    }
    function increaseByTenAnd5(uint e) public {
        i += 10;
        j += 5;
    }
    function increaseByFiveAnd100(uint d) public {
        i += 5;
        j = 100;
    }
}
