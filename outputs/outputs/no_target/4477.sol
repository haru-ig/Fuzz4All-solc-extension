pragma solidity ^0.8.0;
contract C {

    function myFunction() pure public returns (uint8 e) {
        unchecked {
            e = 12 + 16 * 22;
        }
    }
}
contract A {
    function myFunction() public pure returns (uint8 e) {
        unchecked {
            e = 4 + 97;
        }
    }
}
