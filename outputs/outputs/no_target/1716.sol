pragma solidity ^0.8.0;
contract Mutate22 {
    uint256 x;
    function multiply(uint256 y) public view returns (uint256) {
        if (y == 0) {
            return x;
        } else {
            return x * multiply(y - 1);
        }
    }
    constructor() public { x = (x * multiply(0)) / 4; }
}
