pragma solidity ^0.8.0;
contract L1 {
    function myFunction() public pure returns (uint8) {
        assembly {
            let myint8 := 1
        }
    }
}
