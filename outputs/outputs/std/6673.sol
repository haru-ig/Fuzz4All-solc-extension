pragma solidity ^0.8.0;
contract Mutate76_v2 is Mutate76 {
    constructor() public {}
    function modifyX( uint val ) public {
        x_[0] = val;
        x_[3] = 3;
    }
    function modifyY( uint256 yVal ) public {
        y_ = yVal;
    }
    function modifyX3( uint val ) public {
        x_[3] = val;
    }
}
