pragma solidity ^0.8.0;
contract semanticallyequivalent20 {
    uint public x;
    uint public y;
    uint public z;
    modifier z_lesser_than_one() {
        require(z<=y,"Invalid one condition");
        _;
    }
    modifier z_greater_than_10() {
        require(z>y, "Invalid ten condition");
        _;
    }
    constructor() {
       x = 3;
       y = 0;
       z = 7;
    }
    function test() public z {
       z = z-1;
    }
}
