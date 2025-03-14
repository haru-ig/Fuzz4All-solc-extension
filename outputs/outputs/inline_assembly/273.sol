pragma solidity ^0.8.0;
contract E7
{
    uint _x;
    uint constant X=100;
    modifier increment () {
        uint __x = X;
        _x = _x - uint256(_x - __x);
        _;
    }
    function subtract (uint _x) public returns (uint256) {
        _x = _x -  (++uint256 __x) - uint256(_x);
        X *= X;
        --__x;
        return subtract_internal1_0(uint256(_x + 20));
    }
    function subtract_internal1_0 (uint _x) internal returns (uint256) {
        return 9;
    }
    function subtract_internal2_0 () internal view returns (uint256) {
        return 8;
    }
}
