pragma solidity ^0.8.0;
contract B {
    function h() public returns (bytes32) {
        uint32 x = 1142456923;
        bytes32 y = bytes32(x);
        return y;
    }
}
