pragma solidity ^0.8.0;
contract Test {
    function f(uint256 x) pure public {
        assembly {
            mut(1) := mul(x, 101)
        }
        assert(x == 101*101);
    }
}
