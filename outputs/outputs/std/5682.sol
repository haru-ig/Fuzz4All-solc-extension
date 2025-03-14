pragma solidity ^0.8.0;
contract M11{
    mapping (uint16 => bool) public x;
    uint16 public y;
    uint16 public z;
    constructor () public {
        x[0] = true;
        x[800] = true;
        x[uint16(52543280237534206003)] = true;
        x[3000] = true;
    }
}
