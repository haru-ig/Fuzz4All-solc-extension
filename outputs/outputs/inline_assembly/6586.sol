pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample84_OLD {
    uint256 public a;
    uint256 public b;
    uint256 public c;
    uint256 public d;
    uint256 public e;
    function doSomething() public {
        _ = a.add(1);
        _ = ~a.add(a);
        _ = b.add(a);
        _ = b.add(b);
        _ = b.mul(a);
        _ = c.add(a);
        _ = d.add(b);
        _ = e.add(c);
        _ = e.sub(17);
    }
}
