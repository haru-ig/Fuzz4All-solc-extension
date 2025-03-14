pragma solidity ^0.8.0;
contract Mutators_v08a{
    uint160 public immutable value_v09;
    uint32 public immutable value_v10;
    uint256 public immutable value_v11;
    function incompatible_v06() public {
        uint128 a;
    }
    function equivalent() public {
    }
    function incompatible_v07() public {
        uint32 a;
    }
    function incompatible_v08() public {
        uint256 a;
    }
}
