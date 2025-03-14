pragma solidity ^0.8.0;
contract E {
    uint256[1] c = [1];
    function setY(uint256[2] memory d_) public {
        c = d_;
    }
}
