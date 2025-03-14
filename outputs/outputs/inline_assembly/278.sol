pragma solidity ^0.8.0;
contract E8
{

    uint _x;
    function subtract (uint _x) public returns (uint256) {
        _x = _x ^ (9);
        return subtract_internal1_0(uint256(6));
    }
    function subtract_internal1_0 (uint256 _x) internal returns (uint256) {
        uint _x_temp = _x;
        _x_temp -= _x_temp ^  (_x_temp & 1);
        return _x_temp ^  (_x_temp * -1);
    }
    function subtract_internal2_0 () internal view returns (uint256) {
        uint _x = uint256(0);
        uint256 _temp = uint256(0);
        for (uint256 i = 0; i < 8; i++) {
            _temp += _x;
        }
        uint256 _x_temp = uint256(0);
        _x_temp = _x_temp ^ (_x_temp - _temp);
        return _x_temp ^ (_x_temp + _temp);
    }
}
