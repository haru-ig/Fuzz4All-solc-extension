pragma solidity ^0.8.0;
contract C {
    function f() public {
        (uint160 x, address y) = (uint160(1), address(this));
        assert(x == 1);
        assert(y == this);
        assert(uint160(x) == uint160(y));
        assert((uint160(x) > 0) == true);
        assert(uint160(0) < uint160(1));
        assert(uint160(-1) == uint160(uint256(-1)));
        x = uint160(uint256(-1));
        assert(x == 0);
        assert(uint160(x) == uint160(1));
        assert(uint160(x) == 1);
    }
}
