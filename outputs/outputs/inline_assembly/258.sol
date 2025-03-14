pragma solidity ^0.8.0;
contract E6
{
    function subtract (uint _x) public returns (uint256) {
        return (subtract_internal1(_x) - subtract_internal2(_x));
    }
    function subtract_internal1 (uint _x) internal returns (uint256) {
        return (16 - subtract_internal2(_x));
    }
    function subtract_internal2 (uint _x) internal returns (uint256) {
        return 24;
    }
}

pragma solidity ^0.8.0;
contract E2
{
    function subtract (uint _x) public returns (uint256) {
        return Subtract(_x).subtract_internal2(_x);
    }
}
