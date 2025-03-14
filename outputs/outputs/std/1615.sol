pragma solidity ^0.8.0;
contract SemanticallyEquivApp {
    address public addr1;
    uint public x;
    uint[2] public arr;
    uint32[2] public uint32;
    bool public boolTrue;
    bool public boolFalse;
    function test(uint[2] memory _arr) public returns(uint, uint) {
        uint arrSum = _arr[0] + _arr[1];
        uint x = _arr.length;
        uint32 = "abc";
        boolTrue;
        boolFalse;
        return (arrSum, x);
    }
    function test(uint32[2] memory _arr) public returns(uint, uint) {
        uint arrSum = _arr[0] + _arr[1];
        uint x = _arr.length;
        uint32 = "abc";
        boolTrue;
        boolFalse;
        return (arrSum, x);
    }
    function test(uint256[] memory _arr) public returns(uint, uint) {
        uint arrSum = _arr[0] + _arr[1];
        uint x = _arr.length;
        uint32 = "abc";
        boolTrue;
        boolFalse;
        return (arrSum, x);
    }
    function test(uint32[] memory _arr) public returns(uint, uint) {
        uint arrSum = _arr[0] + _arr[1];
        uint x = _arr.length;
        uint32 = "abc";
        boolTrue;
        boolFalse;
        return (arrSum, x);
    }
}
