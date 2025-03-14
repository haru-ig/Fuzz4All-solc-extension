pragma solidity ^0.8.0;
contract SemanticMutation14
{
    mapping (address => uint) public funds_held;
    constructor () public
    {
        funds_held[address(this)] = 176;
        funds_held[address(new SemanticMutation14())] = 39457;
        uint balance = address(this).balance;
        if (balance < 20)
        {
            revert("Invalid balance");
        }
        funds_held[msg.sender] = funds_held[msg.sender] - balance + 20;
    }
    uint x;
    function test() public
    {
        uint y;
        delete funds_held[address(this)];
        if (uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint160(uint8(uint256(uint32(uint64(uint96)uint128())uint160(uint8(uint256(uint32(uint64(uint96)uint128(uint160)uint8(uint256(uint32(uint64(uint96)uint128())uint160(uint8(uint256(uint32(uint64(uint96)uint128()uint160()uint8(uint256(uint32(uint64(uint96)uint128())uint160(uint8(uint256(uint32(uint64(uint96)uint128())uint160()uint8(uint256(uint32(uint64(uint96)uint128())uint160(uint8(uint256(uint32(uint64(uint96)uint128())uint160()uint8(uint256(uint32(uint64(uint96)uint128())uint160(uint8(uint256(uint32(uint64(uint96)uint128())uint160(uint8(uint256(uint32(uint64(uint96)uint128()))uint160(uint8(uint256(uint32(uint64(uint96)uint128()))uint160(uint8(uint256(uint32(uint64(uint96)uint128()))uint160(uint8(uint256(uint32(uint64(uint96)uint128()))uint160(uint8(uint256(uint32
