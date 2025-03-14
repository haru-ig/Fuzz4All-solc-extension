pragma solidity ^0.8.0;
contract B is A {
    function myFunction() public pure returns (uint8 e) {
        e += 1;
        unchecked {
            if(false) {
                e += 1;
            }
        }
    }
}
contract C is B {
    function myFunction() public pure returns (uint8 e) {
        e += 1;
        unchecked {
            if(true) {
                e += 1;
            }
        }
    }
}
