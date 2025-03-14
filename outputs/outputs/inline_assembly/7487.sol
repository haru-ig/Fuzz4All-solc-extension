pragma solidity ^0.8.0;




contract C {
    function f() public pure {
        uint32 x = 5;
        assembly {
            x := x + 1000000000000
        }
        assert(x == 5 + 1000000000000);
    }
}
