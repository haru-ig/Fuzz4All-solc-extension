pragma solidity ^0.8.0;
contract c {
    function f(uint z) public {
        uint w = uint(uint8(uint(m() / uint8(z)))) * (uint8(z)? 1 : uint8(z)) - 1;
        uint x = uint(m() / uint(z)) + (uint(z) > m() * 2)? m() : 0;
        f(x);
    }
    function g() public pure {
        i x = i(m());
        assert(x.m() >> z!= 0);
    }
}
