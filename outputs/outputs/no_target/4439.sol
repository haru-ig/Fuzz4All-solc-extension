pragma solidity ^0.8.0;
contract newL {
    function myFunction() public pure returns (uint) {
        assembly {
            let myint128 := mul(2, -42)
        }
    }
}
