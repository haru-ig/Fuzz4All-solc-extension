pragma solidity ^0.8.0;
contract Mutate4 {
    uint public a = 1; uint b; uint c = 3; uint256 w; uint x; uint128 y; uint256 z; uint32 z_; uint48 z__; uint64 x_; uint128 y_; uint256 z_;
    uint32 z; uint42 x; uint48 x; uint56 x__ = 3; uint64 x; uint64 x__; constructor() public {
    }
    function f() public view returns (uint) {
        mutability() b++;
        a = 10;
        mutability();
        a = 10;
        b ++;
        mutability();
        b++;
        a = 10;
        return w + x + y;
    }
    function mutability() public {
        w = 10;
        x = 10;
        y = 20;
        b = 10;
        z = 10;
        mutability();
        a = 10;
        z = 10;
        mutability();
        b = 10;
        x = 10;
        y = 20;
        mutability();
        w = 10;
        x = 10;
        y = 20;
        mutability();
        z = 10;
        mutability();
        b = 10;
        z = 10;
        mutability();
        mutability();
        a = 10;
        x = 10;
        y = 20;
        mutability();
        z = 10;
        mutability();
        x = 10;
        y = 20;
        mutability();
        x = 10;
        mutability();
        y = 20;
        mutability();
        mutability();
    }
}
