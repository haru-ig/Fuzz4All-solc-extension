pragma solidity ^0.8.0;
contract seven{
    uint public x;
    uint public y;
    uint256 public z;
    function a() public {
        z = (z | x) - log2(y);
    }
    function b() public {
        a();
        y += 2;
        a();
        y = 1;
    }
    function c() public {
        y += 7;
        y = 8;
    }
    function d() public {
        a();
    }
}
