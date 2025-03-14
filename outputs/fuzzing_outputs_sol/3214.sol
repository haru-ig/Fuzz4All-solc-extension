pragma solidity ^0.8.0;
contract Caller {
    function Call(uint256 amount) public pure returns (uint256) {
        uint256 r = amount * 3;
        return r;
    }
}
