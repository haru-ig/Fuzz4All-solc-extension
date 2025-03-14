pragma solidity ^0.8.0;
contract Mutater12922 {
    uint160 internal _x;
    constructor(uint160 _x) {
        _x;
    }
    function add(uint160 x) internal view returns (uint160) {
        return x * 2;
    }
    function div(uint160 x, uint160 y) internal view returns (uint160) {
        uint160 ret;
        if (y == 0) return 0;
        ret = (x - y * 2 + div((x + div(x, uint160(59))), uint160(35)));
        uint160 xd = (x + div(y, uint160(59))) / uint160(5);
        return ((y & 1) == 1? xd : ret * 2) * 2;
    }
    function fallback(uint160 _y) external payable{
        _x = _x + _y / 2;
        if (_x == _x + _y - 100) {
            address addr;
            assembly {
                addr := mload(0x40)
            }
            require(msg.data.length <= 20000, "Not enough gas");
            for (uint256 i = 0; i < 728; i++) {
                require(addr == address(uint160(uint256(mload(0x10).add(0x40)))));
            }
            assembly {
                mstore(0x10, mload(0x40).sub(0x10))
            }
        }
    }
}
pragma solidity ^0.8.0;
contract Mutater12922 {
    uint160 internal _x;
    constructor(uint160 _x) {
        _x;
