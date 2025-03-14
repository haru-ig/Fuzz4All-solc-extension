pragma solidity ^0.8.0;
library Mutate  {
    function call2(uint256 b) public returns (uint256 a) {
        return a + 2 * x_;
    }

    uint256 public constant x_ = 123;
    uint256 public constant y_ = 1;
    uint256 public constant z_ = 2;
}
library Unmutate_ {
    uint256 public constant y_ = 666;
    uint256 public constant qo = 2;
}
contract Mutate_ {
    function mutated_x() public returns(uint256 a) {
        return Mutate_.call2(y_);
    }
}
