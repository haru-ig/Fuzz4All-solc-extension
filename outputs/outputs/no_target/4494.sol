pragma solidity ^0.8.0;
contract C {
    function myFunction() pure public returns (uint8 e) {
        unchecked {
            if(true) {
                e += 0;
                e += 0;
            }
        }
    }
}
contract A {
    function myFunction() public pure returns (uint8 e) {
        unchecked {
            if (true) {
                e += - 1;
                e += - 1;
            }
        }
    }
}
