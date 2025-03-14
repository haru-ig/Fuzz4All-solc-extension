pragma solidity ^0.8.0;
contract E6
{
    uint _x;
    function subtract (uint _x) public returns (uint256) {
        _x = _x ^  (~ _x);
        return subtract_internal1_0(uint256(6));
    }
    function subtract_internal1_0 (uint _x) internal returns (uint256) {
        return 9;
    }
    function subtract_internal2_0 () internal view returns (uint256) {
        return 8;
    }
}

pragma solidity ^0.8.0;
contract E2
{
    uint x;
    function removeAndReturn (uint _x) public {
        uint(0);
        x += _x;
    }
    function subtractAndReturn (uint _x) public returns (uint256) {
        uint(6);
        uint256(0);
        return ((x) + ((x) ^  (~ _x)));
    }
}

pragma solidity ^0.8.0;
contract E1
{
    uint x;
    function removeAndReturn (uint _x) public {
        uint(_x);
        x = ((x) - _x);
    }
    function subtractAndReturn (uint _x) public returns (uint256) {
        uint(6);
        ((uint256) x);
        return ((x) - ((x) ^ (~ _x)));
    }
}
