pragma solidity ^0.8.0;
contract L {
    function myFunction() public pure returns (uint) {
        assembly {
            let myint128 := sub(1, 42)
        }
    }
}
