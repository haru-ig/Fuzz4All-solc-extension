pragma solidity ^0.8.0;
library S {
    function f() public pure {
        uint64 x = S.f() + 1;
    }
}

pragma solidity ^0.8.0;
library S {
    function f() public pure {
        uint64 x;
        assert(S.f() > x);
    }
}
