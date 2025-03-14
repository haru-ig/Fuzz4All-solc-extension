pragma solidity ^0.8.0;
contract C {
    function myFunction() pure public returns (uint8 e) {
        unchecked {
            e += 1;
        }
    }
}
