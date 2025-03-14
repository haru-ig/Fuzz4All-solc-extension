pragma solidity ^0.8.0;
abstract contract Contract {
    function f1() public {
    }
    function f2(
        uint a,
        uint
        b
    ) public {
        uint c = a > 100? a - b : b - a;
    }
}
