pragma solidity ^0.8.0;
contract Main {
    function b(uint i) public {
        if (true) {
            a(b());
        } else {
            a(a + i);
        }
    }

    function a(uint i) public {
    }
}
