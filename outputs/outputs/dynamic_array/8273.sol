pragma solidity ^0.8.0;
contract Solidity5 {
    uint256 public a;
    uint8 public b;
    constructor() public {
        a = 1;
        b = 1;
    }
    function myFunction() public {
        a += b;
        b += a;
    }
}
contracts Solidity6 {
    uint[] public a;
    uint256 public b;
    constructor() public {
        a = [1];
        b = a[0];
    }
    function myFunction() public {
        a.push(b);
        b = a[0];
    }
}
