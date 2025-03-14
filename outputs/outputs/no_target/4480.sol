pragma solidity ^0.8.0;
contract C {
    function myFunction() public pure returns (uint164 e) {
        unchecked {
            e += 1;
        }
    }
}
contract A {
    function myFunction() public pure returns (uint164 e) {
        unchecked {
            e += 1;
        }
    }
}
