pragma solidity ^0.8.0;
contract Ga2 {
    uint56 private c;
    function g() public returns(uint256){
        uint56 x = 3;
        if (x!= 1) {
            uint56[] memory b = new uint56[](x);
            b[1] = 2;
            return b[1+x];
        }
        return c;
    }
}
