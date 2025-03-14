pragma solidity ^0.8.0;
contract MutatedDynamicArrayTypeCheck4{
    function modified() public returns (uint256, uint256) {
        uint256 new1 = index + length;
        uint256 new2 = index - length;
        return(new2, new1);
    }
}
