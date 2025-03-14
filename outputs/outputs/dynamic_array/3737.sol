pragma solidity ^0.8.0;
contract E {
    uint256[1,2] c = [1,2];
    function setY(uint256[2] memory c_) public {
        c = c_;
    }
}
