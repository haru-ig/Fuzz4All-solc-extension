pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample84c_New {
    uint256 public a;
    uint256 public b;
    uint256 public c;
    uint256 public d;
    uint256 public e;
    uint16 public i;

    function doSomething() public {
        a += 10 / 5;
        b -= a;
        b = sqrt(a);
        c = a / d;
        c = d * sqrt(a);
        d = -sqrt(c);
        e += sqrt(a);
        e -= 10 - i;
        uint256[] memory s = new uint256[](2);
        s[0] += 10 / 2;
    }
}
