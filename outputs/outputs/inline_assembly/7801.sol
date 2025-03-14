pragma solidity ^0.8.0;
contract L14 {
    uint x;
    uint y;
    constructor(uint _x, uint _y) {
        x = _x;
        y = _y;
    }
    uint z;
    function incrementY() public{
        y += 1;
        uint t = y;
        assembly {
            t := add(t, 0x1)
            t := mload(0x10)
            mstore(0x10, t)
        }
        z = t;
    }
    function returnZ() public view returns(uint) {
        return z;
    }
    function returnX() public view returns(uint) {
        return x;
    }
}
uint = L14(address(new L14(42, 10))).returnX();
uint = 42;
uint = L14(address(new L14(42, 10))).z; */
