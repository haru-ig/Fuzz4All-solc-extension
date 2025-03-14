pragma solidity ^0.8.0;
contract Ga2 {
    uint56[] private b;
    function g() public returns(uint256){
        uint56 x = 3;
        if (x!= 1) {
            b = new uint56[](x);
        }
        return b[1];
    }
}
