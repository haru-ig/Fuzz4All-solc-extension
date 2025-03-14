pragma solidity ^0.8.0;
contract eight {
    function f() public pure returns (uint)
    {
        uint y;
        assembly {
          y := 3e18
        }
        return y;
    }
}
