pragma solidity ^0.8.0;
contract EquivalentAbiMutations_v1 {
    uint160 constant public value00 = 203;
    uint160 constant public value01 = value00 + 1;
    uint160 constant public value10 = value01 + 1;
    uint256 constant public value02 = value01 + 1;
    uint256 constant public value03 = value09 + 1;
    uint256 constant public value04 = value12 + 1;
    uint256 constant public value05 = value17 + 1;
    uint256 constant public value06 = value18 + 1;
    uint256 constant public value07 = value19 + 1;
    uint256 constant public value08 = value20 + 1;
    uint256 constant public value09 = 22;
    uint256 constant public value12 = 23;
    uint256 constant public value17 = 24;
    uint256 constant public value18 = 25;
    uint256 constant public value19 = 26;
    uint256 constant public value22 = 203;
    uint256 constant public value23 = 208;
    uint256 constant public value20 = 200;
    function test (address value21) public {
        uint256 x;
        uint256 y;
        uint32 z;
        uint256 w;

        { bool b; x = 2 * 123000000000000000;   b = (2 > x); assert( b ); }
        { bool b; x = 2 * 123000000000000000;   b = (2 > x); assert( b ); }
        { bool b; x = 2 * 0x000000000000000000000000000000000000;   b = (2 > x); assert( b ); }
        { bool b; x = 2 * 0x000000000000000000000000000000000000000;   b = (2 > x); assert( b ); }
        { bool b; x = 2 * -1; /* This line
