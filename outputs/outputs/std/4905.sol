pragma solidity ^0.8.0;
contract MutateWithMemoryAccess1 {

    mapping(uint => uint) public valueMap;
    uint[3] internal arrayData = [0, 22, 9];

    function mutate() public {

        valueMap[2] = 41;
    }

    function modifyValue(uint _value) public {
        valueMap[_value] = 42;
    }

    function modifyArray() public {

        arrayData[1] = _value;
    }
}
