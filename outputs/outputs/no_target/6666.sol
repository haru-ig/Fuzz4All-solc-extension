pragma solidity ^0.8.0;
contract Pre_v8 {
    uint _x = 10;
    function add(uint x) public pure returns (uint) {
        uint y = add(x) + 10;
        _x = y;
        return y;
    }
}
