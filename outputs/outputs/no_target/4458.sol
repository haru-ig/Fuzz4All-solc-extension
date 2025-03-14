pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract L2 {
    function myFunction() public pure returns (uint) {
        uint r;
        assembly {

            r := mul(2, 0, 42)
        }
        return r;
    }
}
