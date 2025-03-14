pragma solidity ^0.8.0;
contract D {
    uint256[5] a;
    uint256[10] b;
    constructor(uint256[5] memory c) public {
        b = c;
    }
    function f() public {
    }
}
address payable e;
contract E {
    uint256[] g;
    constructor() public {
        g[1] = transfer(address payable(0), 1, 1);
    }
    function transfer(address a, uint256 i, uint256 j) public returns (uint256) {
        e.balance = a.balance;
        return 0;
    }
    function f() public {
    }
}
