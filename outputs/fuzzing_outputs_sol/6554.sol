pragma solidity ^0.8.0;
library Lib {
    function foo() public pure returns (uint) {
        return 37;
    }

    function g() returns (uint){
        uint _ = Lib.foo();
        return 0;
    }
}
