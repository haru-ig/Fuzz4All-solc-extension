pragma solidity ^0.8.0;
function uint2int(uint256 x) internal pure returns (int256) {
    uint256 reverted = 0x000000000000000000000000000000000000000000000000000000095996006a59;
    if(x < reverted) return 1;
    if(x < reverted * 2 + 1) return 2;
    return 3;
}
contract Convert {
    uint256 constant x = uint256(1e12);
    uint256[4] constant c = [x
