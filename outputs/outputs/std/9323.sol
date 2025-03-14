pragma solidity ^0.8.0;
contract Semantics
{
    function getUint8() public pure returns (uint8);
    function getUint256() public pure returns (uint256);
    function getBool(uint8 b) public pure returns (bool) {
        if (b == 0) {
            return false;
        } else {
            return true;
        }
    }
}
