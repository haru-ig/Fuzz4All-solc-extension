pragma solidity ^0.8.0;
contract Ga2 {
    uint256[] private b;
    function g() public returns(uint256){
        uint56 x = 3;
        if (x!= 1) {
            b = new uint56[](x);
        }
        return b[1];
    }
    function g() public returns(uint4){
        uint256 x = 3;
        if (x!= 1) {
            b[x] = 1;
        }
        return b[x];
    }
}
