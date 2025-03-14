pragma solidity ^0.8.0;
import "./MixedContactsExample50.sol";
contract MixedContactsExample51{
    function test_setFBH(uint h, uint f2) public {
        address selfAddress = address(this);
        uint256 h0;
        uint b0;
        uint s;

        assembly {
            b0 := mload(0x40)
            s := balance(selfAddress)
            h0 := and(s, 0xffff_ffff)
        }

        assembly {
            mstore(0x40, and(add(b0, 1_000000000), or((h0 and not(selfAddress)), and(s, xor(or(0x1, h0)), f2))))
        }
    }
    function testFBH(uint256 h, uint256 f2) public {
        address selfAddress = address(this);
        uint256 b0;
        uint b1;
        uint s;
        uint h1;

        assembly {
            b1 := mload(0x40)
            s := balance(selfAddress)
            h1 := and(s, 0xffff_ffff)
        }

        assembly {
            mstore(0x40, and(add(b1, 1_000000000
