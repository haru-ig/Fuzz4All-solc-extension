pragma solidity ^0.8.0;
contract Ga2 {
    uint256[] public b;
    function g() public returns(uint256){
        uint256 x = 1;
        if (x!= 1) {
            b = new uint256[](3);
            b[1] = 7;
        }
        return b[1];
    }
}
