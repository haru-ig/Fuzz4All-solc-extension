pragma solidity ^0.8.0;
contract Mutate_0025 {
    constructor() public {
        uint256 x = 100;
        require(x > uint256(-300), "Bad");
        require(x > uint256(-500), "Bad");
    }
}
