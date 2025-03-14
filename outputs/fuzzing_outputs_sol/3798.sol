pragma solidity ^0.8.0;
contract Example19 {
    function example19() public returns (uint256 out) { return _check(); }
    function _check() private pure returns (uint256) {
        uint16 _num = uint(uint256(block.timestamp));
        uint256 sum_bytes_0;
        assembly {
            sum_bytes_0 := mload(0x3_b62e70a8410105203f6b878706a125a111b79a1c64934f90530eb63338d4fa59)
        }
        uint256 sum_bytes_1;
        assembly {
            sum_bytes_1 := mload(0x2_27c13348097c2031301817471950e9e516b26dc8cc4729491c60d0f818921286)
        }
        return uint256(uint256(sum_bytes_0) + uint256(sum_bytes_1)) + uint256(uint256(block.timestamp));
    }
}
