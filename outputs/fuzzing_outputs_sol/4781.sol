pragma solidity ^0.8.0;
contract Mutated7 {
    constructor(uint256 x) public {
        fallback = address(this);
       _;
    }
    fallback: address,
    function get() public pure returns(uint256) {
        return 1;
    }
    fallback(uint256 w) public pure returns(uint256) {
        return 1;
    }
    fallback(uint256 w, uint256 x) public pure returns(uint256) {
        return 1;
    }
    fallback(uint256 w, uint256 x, uint256 y) public pure returns(uint256) {
        return 1;
    }
}
contract Mutated8 {
    function new(uint) public payable {}
    fallback(uint) public pure returns(uint) { return 1;}
}
