pragma solidity ^0.8.0;
contract Test42_DynamicArray {
    uint256 a1;
    uint256 b1;
    uint256 c1;

    uint256[] public a2;

    address[] public admin;
    constructor () public {
        admin.push(msg.sender);
        admin.push(admin[1]);
    }

    function test1() public returns (uint256 x) {
        uint256 y = a1 + b1; y = 5*y; y = 53*y; a1 = 5*y; b1 = 53*y; a2.push(42);
        y = 5*y; y = 53*y; a2.push(42)
        a2[1] = a1 + b1; b1 = a2[0]; a1 = y; b1 = 0;
        b1 = 2*b1 + b1; b1 += 5*b1; b1 = 2*b1;
        return 5*y; a1 += 5*5; a1 -= 5*a1; a1 = 3*a1 + a1; a1 = a1 - 5*a1 + a1;
        a1 = 4*a1 + 3*a1 + a1; a1 += 3*a1; return 5*4;
    }
    bool b1;
    uint256 c1;
    function test2() public returns (uint256 x) { return true;}
}
