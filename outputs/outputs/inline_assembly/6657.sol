pragma solidity ^0.8.0;
contract OddContactsExample {
    uint256 x;
    uint256 y;
    uint256 z;
    uint256 w;
    uint256 v;
    uint256 u;
    uint32 t;
    function doSomething() public returns (uint256) {

        x = _read();
        y = _read();
        z = _read();
        w = _read();
        v = _read();
        u = _read();
        t = _read();
        return ((x * 0x62) + (y * 0x94) + 0x66 * (x * 0xF3)) + (((x * (y + z)) + u) == (z * t));
    }
    function _read() public view returns (uint256) {
        uint256 t;
        assembly {
            t := mload(0x45)
        }
        return t;
    }
}
