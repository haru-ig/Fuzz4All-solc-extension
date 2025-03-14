pragma solidity ^0.8.0;
contract Mutated {
    bool flag = false;
    function mod(uint256 x_, uint256 y_) public pure returns (uint256) {
        return (!flag? y_ + x_ / (10 ** y_ % 10 ** x_ % 10) : flag);
    }
    constructor(uint256 x_) public {
        require(x_ > 0);
    }
}
