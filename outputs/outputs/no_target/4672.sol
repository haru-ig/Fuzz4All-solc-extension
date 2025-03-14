pragma solidity ^0.8.0;
contract C
{
    uint256 public v;
    C()public {
        C.f();
        v -= (uint128(1) ^ (uint128(254)));
        C.f();
    }
}
