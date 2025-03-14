pragma solidity ^0.8.0;
contract Mutate41 {
    uint public a;
    uint public b;
    uint public x;
    constructor(uint256, uint256) public {
        a = x + 2;
        b = 2 + x;
    }
}

pragma solidity ^0.8.0;
contract Mutate42 {
    uint public a;
    uint public b;
    uint public x;
    uint immutable y;
    uint256 public z;
    uint256 public w;
    constructor(uint256, uint256) public z(2), z(3) {
        a = x;
        b = x + 2;
        y = a + 4;
        if (x <= 0) {
            uint256 y = 3 + 4;
            (w, z) = (a, b);
        }
    }
}
