pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample40 {
    uint public i;
    uint public j;
    uint public k;
    function testMixed() public {
        i = i + 1;
        j = j + 10;
        increaseByTenAnd20(8);
        i = i + 1;
        j = j + 10;
        increaseByTenAnd20(99);
        i = i + 1;
        j = j + 10;
        increaseByTenAnd20(8);
        i = i + 1;
    }
}
