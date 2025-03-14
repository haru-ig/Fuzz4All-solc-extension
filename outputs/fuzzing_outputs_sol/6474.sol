pragma solidity ^0.8.0;
contract FallbackCall {
    function fallback() public {

        uint z = 1;
        uint b = 2;
        D d = new D();
        d.bar();

        uint x;
        x = 123;
        uint x0 = x + 1;
        uint x1 = x0 + b;
        uint x10 = x1 + 1;
        x10 = x10 + b;
        uint x11 = x10 + b;
    }
}
