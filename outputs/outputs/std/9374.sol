pragma solidity ^0.8.0;
contract Mutate3
{
    uint8[50] public data;
    function get(uint256 pos) constant public returns (uint8) {
        return data[pos];
    }
}
