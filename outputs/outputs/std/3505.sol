pragma solidity ^0.8.0;
contract Mutator {
    struct MultiplicationResult {
    	uint256 product;
    	uint256 remainder;
    }
    uint256 internal x;
    uint256 internal y;
    constructor (uint256 x_) {
    	x = x_;
    }
    function () public payable {
    	y = Multiply.multiply(x, 10).product;
    }
}
