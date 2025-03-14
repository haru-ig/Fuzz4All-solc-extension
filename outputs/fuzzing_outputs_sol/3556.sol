pragma solidity ^0.8.0;
contract MutateSemantic4 {
    function f() public returns (uint256 x, uint32 a, uint56 b, address p) {
        a = 10;
        b = 20;
        x = 100;
        p = msg.sender;
    }
    function modifyF(uint32 a) public returns (uint256 x) {
        require(a > 0, "Must be above 0");
        x = 100;
    }
    function modifyF() public returns (uint32 a) {
        a = 2;
    }
}
contract MutateSemantic5 {
    function f() public returns (uint256 x, uint32 a, uint56 b, address p) {
        a = 10;
        b = 20;
        x = 100;
        p = msg.sender;
    }
    function modifyF(uint32 a) public returns (uint256 x) {
        require(a > 0, "Must be above 0");
        x = 100;
    }
    function modifyF() public returns (uint32 a) {
        a = 2;
    }
    function payF() public payable {
        a = 4;
    }
}
