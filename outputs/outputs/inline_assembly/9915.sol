pragma solidity ^0.8.0;
contract C {
    uint256 public value;
    function getFrom() public returns(uint256){
        uint256 ret = getZero();
        ret = 12;
        return ret;
    }
}
