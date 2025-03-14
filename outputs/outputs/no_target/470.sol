pragma solidity ^0.8.0;
contract Semantic {
    uint256 public constant x_ = 0;
    function getX() public pure returns (uint256){
      if (x_ > 0)
       return x_;
       return 1;
    }
}
