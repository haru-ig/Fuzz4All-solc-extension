pragma solidity ^0.8.0;
contract C {
    function myFunction() public returns (uint8 e) {
        e = 4 + 6;
    }
}
contract A {
    event foo(uint8 x);

    function myFunction() public returns (uint8 e) {
        emit foo(4 + 6);
        emit foo(6 + 8);
        e = 1 + 3;
    }
}
