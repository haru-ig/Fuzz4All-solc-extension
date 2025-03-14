pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract test62 {
    bool x;
    function f() public pure returns (uint256[]) {
        bytes memory b = hex"ff";
        return new uint256[](b);
    }
}
