pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample84_E {
    struct foo {
        uint a;
        address b;
        uint c;
    }
    uint256 public a;
    uint256 public b;
    uint256 public c;
    uint256 public d;
    uint256 public e;
    function doSomething() public {
        foo memory f = foo(a, address(this), c);
        a += 1;
        f.a += 4;
        b += ~f.a;
        b += f.a;
        b += 10;
        f.b += 11;
        c += f.b;
        d += f.c;
        e += f.a;
        e -= 17;
        f.b -= d;
        f.a += d;
    }
}
