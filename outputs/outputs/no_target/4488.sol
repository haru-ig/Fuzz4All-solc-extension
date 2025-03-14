pragma solidity ^0.8.0;
contract C {
    function myFunction() pure public returns (uint8 c) {
        unchecked {
            c += 1;
        }
    }
}
contract A {
    function myFunction() public pure returns (uint8 f) {
        unchecked {
            c += 1;
        }
    }
}
