pragma solidity ^0.8.0;
contract C {
    function myFunction() pure public returns (uint8 e) {
        e = 12 + 16;
    }
}
contract A {
    function myFunction() public pure returns (uint8 e) {
        e = 4 + 97;
    }
}
