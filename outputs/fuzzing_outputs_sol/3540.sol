pragma solidity ^0.8.0;
contract MutateFallback {
    function f() public view returns (uint256 x){
        return 10;
    }
    function modifyF() public payable returns (uint256 x){
        x = 10;
    }
}
