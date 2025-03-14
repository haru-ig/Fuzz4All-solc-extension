pragma solidity ^0.8.0;
library C {
    using bytes32 for bytes32;
    function f() public pure returns (uint256) {
        bytes memory buf = bytes("abcdef");
        bytes memory slice = bytes(buf, 2);
        bytes32[] memory slices = new bytes32[](1);
        slices[0] = slice;
        return uint256(slices.length);
    }
}
