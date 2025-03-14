pragma solidity ^0.8.0;
contract E8
{
    uint _x;
    function subtract (uint _x) public returns (uint256) {
        _x = uint64(uint256(_x)) >> subtract_internal1_0(uint256(1));
        return subtract_internal2_0();
    }
    function subtract_internal1_0 (uint _x1) internal returns (uint256) {
        uint256 x10;
        assembly {
            x10 := _x1 * 10 -> (x10, m10)
        }
        return 1;
    }
    function subtract_internal2_0 () internal view returns (uint256) {
        uint256 x2;
        {
            uint256 _x;
            assembly {
              _x := 10 * x10 -> x10
            }
        }
        return 2;
    }
}
