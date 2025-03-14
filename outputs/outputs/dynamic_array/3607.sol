pragma solidity ^0.8.0;
contract C {
    uint256 internal i;

    function c() public {
        for(uint n=0;n<100;n++){
            i = 5;
        }
    }
}
