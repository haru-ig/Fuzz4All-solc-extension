pragma solidity ^0.8.0;
contract C {
    uint256[] public x;
    uint x2;

    constructor(uint xSize) {
        x.push(1);
        x.push(1);
        x[1] = 2;
        x2 = 2;
        x[0] = x2;
        x.push(1);
        x2++;
    }
}
address payable owner;
contract C2 {
    uint public y;
    uint256 public z;

    constructor(uint ySize) {
        y = ySize;
        z = y;
    }

    function f(uint xSize) public view returns (uint) {
        y--;
        return xSize;
    }

    receive() external payable {
    }
}
