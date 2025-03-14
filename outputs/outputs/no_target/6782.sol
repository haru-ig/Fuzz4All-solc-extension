pragma solidity ^0.8.0;
contract Mutant17 {
    uint constant a = 1000;
    function mul(uint _x, uint _y) public pure returns (uint) {
        _x = mul(_x, _x + a + a);
        return _x + _y * 20 + a * 500;
    }
}
