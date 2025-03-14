pragma solidity ^0.8.0;
contract E8
{
    uint _x;
    function subtract (uint _x) public returns (uint) {
        uint256 _x256 = subtract_internal2_0();
        return (uint)(_x - _x256);
    }
    function subtract_internal2_0 () internal view returns (uint256) {
        _x = _x ^ uint256(8);
        return 7;
    }
}
