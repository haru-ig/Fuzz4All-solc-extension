pragma solidity ^0.8.0;
contract CappedMutatedABIv2
{
    uint256 constant CAP = 100;

    function f(uint256 x) public pure {
        if(x > CAP) {
            x -= CAP;
        }
        x = x * CAP / 2;
    }
}


/* pragma solidity ^0.8.0;
contract MutatedABIv2
{
    function f(uint256 x) public pure {
        x = uint256(uint32(x) - 1);
        x = uint256(uint8(x) - 1);
        x = uint256(uint16(x) - 1);
        x = uint256(uint128(x) - 1);
        x = uint256(uint256(x) - 1);
        x = uint256(uint64(x) - 1);
        x = uint256(uint32(x) + 1);
        x = uint256(uint8(x) + 1);
        x = uint256(uint16(x) + 1);
        x = uint256(uint128(x) + 1);
        x = uint256(uint256(x) + 1);
        x = uint256(uint64(x) + 1);
        x = uint256(uint32(x) - 2);
        x = uint256(uint8(x) - 2);
        x = uint256(uint16(x) - 2);
        x = uint256(uint128(x) - 2);
        x = uint256(uint256(x) - 2);
        x = uint256(uint64(x) - 2);
        x = uint256(
