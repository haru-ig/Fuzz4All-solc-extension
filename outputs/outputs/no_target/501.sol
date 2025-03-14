pragma solidity ^0.8.0;
contract C {
    function t0() public pure {
        uint256 public z;
        uint256 public y;
        uint256 public constant z_ = 1;
        z = z_ * (y - 1);
    }
}
contract D {
}
contract E {
    struct L {
        uint256 x;
    }
    function f0(L memory l) public pure returns (uint256)  {
        uint256 public z;
        uint256 public y;
        uint256 public constant z_ = 1;
        z = z_ * (y - 1);
        return z;
    }
}
contract F {
    function f0(uint256) public pure {}
}
