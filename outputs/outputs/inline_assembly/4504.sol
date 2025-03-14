pragma solidity ^0.8.0;
contract Emulator6 {
    uint x; uint y;
    function init() public {   x = 9; y = 8; }
    bool b = true;
    function sub(uint x,uint y) public pure returns(uint) {
        uint z;
        assembly {
            mstore8(add(0x41,z), mload8(add(0x31,z)))
            mstore8(add(0x42,z), and(sstore(not(mload8(add(0x31,z))), 0x02), 0x20))
            b = not(iszero(mload8(add(0x31,z))))
        }
        x = x - z
