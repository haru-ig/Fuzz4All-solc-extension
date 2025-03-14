pragma solidity ^0.8.0;
 contract E {
        uint256 e;
        uint256 x;
        uint256 y;
        uint256 z;
    uint256 constant min = type(uint256).min;
    constructor(address _x, address _y, address _z) public {
       x = E(uint256(E(_x, _y, _z)));
       z = E(x);
       y = E(`Hello world!`);
       e = E(E(x, y));
    }
}
