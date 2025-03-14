pragma solidity ^0.8.0;
contract E8
{
    function modify1 (uint _x) public {
        _x = _x ^  (~ (-3));
        modify2_internal1_0(uint256(6));
    }
    function modify2_internal1_0 (uint _x) internal {
        if (9 > _x) {
            _x = _x * 2;
        }
    }
    function modify2_internal2_0 () internal view {
        if (8 < 3) {
            revert();
        }
    }
}
contract E9
{
    function contractModifier () public pure returns(uint) {
        return 2;
    }
}
