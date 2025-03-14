pragma solidity ^0.8.0;
contract C2 {
    uint[] public v1;
    uint256 public v6;
    uint256 public v10;
    uint256 public v14;
    address public a0;
    address public a2;
    constructor() {
        v6=1;
        v10=1;
        v14=1;
        a0=address(0x0);
        a2=0x0;
    }
    function pushTest() public {
        v6=1;
        v10=1;
        v14=1;
        a0 = address(0x0);
        a2=0x0;
        v1.push(1);
        v1.push(2);
        v1.push(3);
        a0 = address(0x0);
        a2 = 0x0;
        v1.push(1);
        v1.push(2);
        v1.push(3);
        a0 = address(0x0);
        a2 = 0x0;
        v6 = 1;
        v10 = 1;
        v14 = 1;
        v14 = 1;
        v14 = 1;
        v10 = 1;
        v1 = v1.reverse();
        v6 = 1;
        v10 = 1;
    }
}
