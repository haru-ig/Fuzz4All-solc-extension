pragma solidity ^0.8.0;
contract six{
    uint public r;
    uint public x;
    function k() public returns (uint) {

        x += r - r;


        r = 0;




        return saturate(uint256(x));
    }
}
