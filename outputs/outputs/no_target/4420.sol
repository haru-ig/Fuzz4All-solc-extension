pragma solidity ^0.8.0;
contract L {
    function myFunction() public pure {
        assembly {
            let myuint := add(32, 4)
            let myuint := sub(256, 5)
        }
    }
}
