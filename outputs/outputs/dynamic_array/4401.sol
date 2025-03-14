pragma solidity ^0.8.0;
contract MutatedSimple { function test() public payable returns(uint256[] memory) {
    uint256[] memory x = new uint256[](10);

    for (uint256 i = 0; i<x.length; i++) {
        x[i] = i+1;
    }



    if (x.length < 10){

        x.push(uint256(1));
    }
    else {
        x[9] = 1;
    }

return x;
    } }
