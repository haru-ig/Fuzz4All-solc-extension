pragma solidity ^0.8.0;
contract Test9Ff {
    event e_(uint _y);
    function g_() public pure {
        emit e_(1);
    }
}



pragma solidity ^0.8.0;
contract Test9aFp {
    struct stc8a {
        uint a;
        uint[10] x;
        uint[5] y;
    }
    function foo(stc8a s) public pure {
        uint x = s.x[0];
        uint y = s.y[1];
    }
}
