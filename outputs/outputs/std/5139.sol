pragma solidity ^0.8.0;
contract Semantics5 {
    uint[] arr;
    function f(uint a, bool inB) public pure {
        arr[0] = a;
    }
    function g() public pure {
        uint myArray = 1;
        uint otherArray = arr[0];
        uint[] memory someArray = arr;
        uint i = arr.length;
        address e = arr[1];
    }
}
