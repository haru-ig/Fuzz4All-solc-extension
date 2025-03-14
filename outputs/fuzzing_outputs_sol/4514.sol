pragma solidity ^0.8.0;
contract C1 {
    fallback F func;
    receive E() pure external { func(); }
}
contract C2 {
    fallback F func;
    receive E() public { func(); }
}
contract C3 {
    fallback F func;
    receive E() public payable { func(); }
}
contract Caller {
    function f(bool x) public {
        (bool _, bool y,) = function(uint b, bool c) pure { b > 0 && b + 13 >= c; }(true, true);
        x;
    }
}
contract FallbackCall {
    fallback payable F func;
    payable(uint payable y) pure external {
        y > 0;
    }
}
