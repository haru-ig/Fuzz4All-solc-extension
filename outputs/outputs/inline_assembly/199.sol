pragma solidity ^0.8.0;
contract E7H {
    function g(uint16 x) public view returns (uint) {
        return map[x];
    }
    mapping (address => int) map;
    function put(address x, int y) public view returns (uint) {
        x = x.put(11117);
        uint y = map[x];
        return y;
    }
}
