pragma solidity ^0.8.0;
contract Sample {
    using IEquatable for uint8;
    uint8 public _test;
    mapping(address => uint8) private _mapping;

    function testFunction() public pure returns (uint8) {
        return _test;
    }


    function oneDynamicValueArray(uint _test) public {
        uint8[] memory dynamicArray = new uint8[](1);
        dynamicArray[0] = 0;
        _mapping[msg.sender] = _test;
    }

    function oneDynamicVariableArray(uint _test) public {
        uint8[] memory dynamicArray = new uint8[](1);
        dynamicArray[0] = _test;
        _mapping[msg.sender] = _test;
    }

    function oneElementArray() public {
        uint8[] memory elementArray = new uint8[](1);
        elementArray[0] = 0;
        _mapping[msg.sender] = elementArray;
    }

    function twoDynamicValueArray(uint _test) public {
        uint8[] memory dynamicArray = new uint8[](2);
        dynamicArray[0] = 0;
        dynamicArray[1] = 0;
        _mapping[msg.sender] = _test;
    }

    function twoDynamicVariableArray(uint _test) public {
        uint8[] memory dynamicArray = new uint8[](2);
        dynamicArray[0] = _test;
        dynamicArray[1] = _test;
        _mapping[msg.sender] = _test;
    }

    function twoElementArray() public {
        uint8[] memory elementArray = new uint8[](2);
        elementArray[0] = 0;
        elementArray[1] = 0;
        _mapping[msg.sender] = elementArray;
    }

    function threeDynamicValueArray(uint _test) public {
        uint8[] memory dynamicArray = new uint8[](3);
        dynamicArray[0] = 0;
        dynamicArray[1] = 0;
        dynamicArray[2] = 0;
        _mapping[msg.sender] = _test;
    }

    function threeDynamicVariableArray(uint _test) public {
        uint8[] memory dynamicArray = new uint8[](3);
        dynamicArray[0] = _test;
        dynamicArray[1] = _test;
        dynamicArray[2] = _test;
        _mapping[msg.sender] = value;
    }
}
