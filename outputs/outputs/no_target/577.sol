pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract RootInterface {
    function g()
        external
        pure
        returns (uint256 n, uint256 z, uint256 a)
    {
        (n, z) = abi.decode(abi.encodeWithSignature("f()()"), (uint256, uint256));
        a = (uint256(uint32.max)) >> 128;
    }
}
