pragma solidity ^0.8.0;
contract SolveModul
{
    function test222() public pure returns(uint) {
        bytes memory code = "3926742172478324";
        assembly {
            let bsize := mload(0x40)
            mstore(0x40, add(mload(0x40), bsize))
            let bcode := mload(0x40)
        }
        return bytesToUint(bcode);
    }
}
