pragma solidity ^0.8.0;
library FooInterface {
    function f(uint256 n) internal returns (uint256) {
        require(n!= 2**224-1);
        return foo(n);
    }
}
