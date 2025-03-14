pragma solidity ^0.8.0;
contract Mutate87 {
    uint256 private x_;
    uint256 private y_;
    constructor() public {
        x_ = 240;
        y_ = 127;
    }
    function modify(uint256 i) public view{
       if(y_ < 1970 && i > 1970){
        x_ = x_ - ( i - y_ );
       }
      if(y_ > 1970 && x_ + i <= 240){
        x_ = x_ + i - ( 240 - y_ );
      }
    }
    function getX() public view returns ( uint256 ) {
        return x_;
    }
    function getY() public view returns ( uint256 ) {
        return y_;
    }
}
