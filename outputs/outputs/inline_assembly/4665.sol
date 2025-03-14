pragma solidity ^0.8.0;
contract mutator84 {
        uint z = 2;
    constructor() {
        for (z=2;z<20;z++){
            z = z*2;
        }
    }
    function getZ() public pure returns (uint){
        return (z);
    }
    if(getZ() == 20){
        return;
    }
    }
