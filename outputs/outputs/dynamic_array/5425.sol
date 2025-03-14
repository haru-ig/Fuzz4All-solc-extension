pragma solidity ^0.8.0;
contract Test36 {
    event logEvent2(uint foo2, bool bar2);
    uint[10] arrA;
    uint[10] _arrB;
    function logEvent() public {
        emit logEvent2(_arrB[0], _arrB[1]);
    }

    function set1(uint newInt, uint newBool, uint[] memory _arrB_array, bytes _data1) public {
        _arrB = _arrB_array;
    }
    function set2(uint newInt, uint newBool, uint[] memory _arrB_array, bytes memory _data2) public {
        _arrB = _arrB_array;
    }
}
