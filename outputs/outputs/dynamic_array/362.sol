pragma solidity ^0.8.0;
contract Ga2 {
    uint56[] private b;
    function g() public returns(uint256){
        b[sizeof(b.length) - 1] = 0;
        uint56 ret = b[2];
        b[1] = 0;
        return ret;
    }
}
