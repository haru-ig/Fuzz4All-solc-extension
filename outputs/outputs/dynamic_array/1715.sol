pragma solidity ^0.8.0;
contract MutatedDynamicArrays04 {
    uint256[] public elements;
    uint256 constant numElements = 5;
    constructor() public {
        elements = [120, 100, 90, 100, 100];
        elements[1] = 50;
        elements[0] = 50;
        elements[2] = 50;
        elements[3] = 50;
        elements[4] = 50;
    }
    function use() public {
        return;
    }
    function use2() public {
        elements = [170, 90, 170, 80, 60];
    }
}

contract MutatedData12 {
    address[] public myAddress;
    uint256 myUint;
    constructor() public {
        myUint = 55;
        myAddress = [address(0x235fd8900), '0xf9a479fb850439'];
        myAddress[0].data;
    }
    function () public {
        myUint += 1;
        myUint.data;
        myUint == 55;
        myUint[0].data;

        bytes memory x = new bytes(2);

        x.length;
        x.data
    }
}
