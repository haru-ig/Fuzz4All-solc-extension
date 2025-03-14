pragma solidity ^0.8.0;
contract Arrays {
    uint256[] a;
    uint256[] b;
    uint256 public n = 1;
    uint256 public x;
    uint256 public y;
    constructor(a:uint256[]) public {
        a.push(57);
    }
    function f() public {



        a.push(59);
    }
}
