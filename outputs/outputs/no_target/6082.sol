pragma solidity ^0.8.0;
contract Mod2 {
    uint x;
    function update(uint y) public {
        x = y;
        x++;
        x += 1;
        x--;
        x--;
    }
    function get(uint x) public returns(uint) {
        require(uint8(x) == x);
        return uint8(x);
    }
}
