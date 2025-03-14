pragma solidity ^0.8.0;
contract Test1865J{
    uint16 x;
    constructor() public {
    }
    function set() public {
        x = 3;
    }
    function get() public view returns (uint16) {return x;}
}
contract Test1865 {
    function f() public view returns (uint16){
        Test1865I test;
        uint32 t;
        assembly {
            t := mload(40)
        }
        return t + 8;
    }
    function g() public view returns (uint16){
        Test1865J test;
        uint32 t;
        assembly {
            t := mload(72)
        }
        return t + 8;
    }
}
