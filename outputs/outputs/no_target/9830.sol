pragma solidity ^0.8.0;
contract d is d {
    function f() public pure {
        address one = address(uint(-1));
        address addr2 = address(0xfffffffffffffffffffffffffffffffffffffffe);
        bytes32 bytes32value = (0xfffffffffffffffffffff800fffffffe);
        uint256 uint256value = (uint256(-1));
    }
}
