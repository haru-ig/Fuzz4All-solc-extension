pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample29 {
    uint public i;
    uint public j;

    constructor(uint a, uint b) {
        i = a;
        j = b;
    }

    function increaseByFourByFive() public {
        i = i.add(4).add(5);
        j = j.add(4).add(5);
    }

    function increaseBy40By100() public {
        i = i.add(40).add(100);
        j = j.add(40).add(100);
    }

    function increaseBy990By123(uint) public {
        i = i.add(990).add(123);
        j = j.add(990).add(123);
    }

    function increaseBy24ThenBy10(uint) public {
        i = i.add(24);j = j.add(10);
    }
    function increaseBy5504ThenBy20(uint) public {
        i = i.add(5504);j = j.add(20);
    }
}
