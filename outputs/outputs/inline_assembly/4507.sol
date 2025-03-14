pragma solidity ^0.8.0;
contract Emulator6 {
    uint x; uint y;
    function init() public {
        uint z = uint (uint256(x)/uint256(y));
        uint w = uint (uint256(x)*uint256(y));
        uint v = uint (uint256(x)^uint256(y));
        uint u = uint (uint256(x)/uint256(y));
        uint s = uint (uint256(u)/uint256(v));
        x = uint256(s);
    }
    function set(uint x) public pure returns(uint) { return x; }
    function mul(uint x, uint y) public pure returns(
