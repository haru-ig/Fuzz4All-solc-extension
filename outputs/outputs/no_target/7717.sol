pragma solidity ^0.8.0;
contract Foo {
    function bar() public pure {
        (int x, uint y) = (5, 6);
    }
    function barmut() public pure {
        (int x, uint y) = (5, 6);
        int z = x;
    }
}

contract Foo {
    constructor() public {

    }
    function bar(int x) public pure returns (int x_) {
        (address z, ) = (uint160(x) - 1);
        address a;
        (int x) = (uint160(a), uint160(a));
        return x_;
    }
}

contract F {
    function f(int p) internal pure returns (int p_)
    {
        return p_;
    }

    function f( uint256 x) internal pure returns (uint256 x_)
    {
        return x_;
    }

    function f( uint160 x) internal pure returns (uint x_)
    {
        return x_;
    }
}
contract F {
    function f(int p) internal pure returns (uint)
    {
        return uint(p_);
    }

    function f( uint256 x) internal pure returns (int)
    {
        return int(x_);
    }

    function f( uint160 x) internal pure returns (uint160 x_)
    {
        x_ = uint160(42);
        return x_;
    }
}

contract F {
    function f(int p_) internal pure returns (int p_0)
    {
        p_ = p_;
        p_0 = p_;
        p_0 = f(uint(p_));
        p_0 = f(uint(p_));
        p_0 = f(uint(p_));
        p_0 = f(uint(p_));
        p_0 = f(uint(p_));
        p_0 = f(uint(p_));
        p_0 = f(uint(p_));
        p_0 = f(uint(p_));
        p_0 = f(uint(p_));
        p_0 = f(uint(p_));
        p_0 = f(uint(p_));
        p_0 = f(uint(p_));
    }

    function f( uint256 x) internal pure returns (uint256 x_)
    {
        x_ = x_;
        int z = f(uint(x));
        x_ = x_;
        x_ = x_;
        x_ = x_;
        z = f(uint(x));
        x_ = x_;
        x_ = x_;
        x_ = x_;
        x_ = x_;
    }

    function f( uint160 x) internal pure returns (uint16
