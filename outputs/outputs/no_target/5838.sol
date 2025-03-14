pragma solidity ^0.8.0;

pragma experimental ABIEncoderV2;
contract C5 {
    uint256 private x;
    function getuint() public view returns (uint256) {
        uint256 x;
        assembly {
            x := 0x1234
        }
        return x;
    }
}
