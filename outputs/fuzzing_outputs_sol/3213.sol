pragma solidity ^0.8.0;
contract Caller {
    function Call(uint256 amount) public payable returns (uint256) {
        uint256 r = amount;
        return r;
    }
}
