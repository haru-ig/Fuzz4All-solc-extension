pragma solidity ^0.8.0;
contract E15
{
    function subtract (uint _x) public returns (uint256) {
        uint _x = _x + subtract_internal1_0(15);
        return subtract_internal2_0(_x);
    }
    function subtract_internal1_0 (uint _x) internal returns (uint256) {
        _x--;
        return _x;
    }
    function subtract_internal2_0 (uint _x) internal returns (uint256) {
        return 15;
    }
}

pragma solidity ^0.8.0;
contract E19
{
    function subtract (uint _x) public returns (uint256)
    {
        uint _x = _x + subtract_internal1_0(255);
        return subtract_internal2_0(_x);
    }
    function subtract_internal1_0 (uint _x) internal returns (uint)
    {
        _x--;
        return _x;
    }
    function subtract_internal2_0 (uint _x) internal returns (uint)
    {
        return 255;
    }
}
