pragma solidity ^0.8.0;
contract Mutate59 {
    uint constant private _MAX_INT = 2**255 - 1;
    uint256 x_;
    uint256 z_;
    constructor(uint256 z) public {
        z_ = z;
    }
    function getX() public view returns ( uint256[10] memory ) {
           return x_;
    }
    function add(uint256 w) public {
       x_ = z_ + w;
       x_ = x_ == uint256(_MAX_INT)? x_ : uint256(1) + x_;
    }
    function set(uint256 w) public {
        z_ = w;
    }
}
