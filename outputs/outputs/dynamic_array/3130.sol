pragma solidity ^0.8.0;
contract AssignmentModulation_V2_Semantic_8 {
    bool x;
    bool y;

    constructor() public {
        x = false;
        y = true;
    }

    function doWork() public returns(uint){
        return 0;
    }

    function getAndStorePairs() public  returns(uint) {
        return x;
    }
}

pragma experimental ABIEncoderV2;
contract AssignmentModulation_V2_Semantic_9 {
    bytes4 x;
    bytes4 y;

    constructor () public {
        x = bytes4(uint256(keccak256("this")));
        y = bytes4(uint256(keccak256("doWork")));
    }

    function doWork() public returns(uint){
        return 0;
    }

    function getAndStorePairs() public  returns(uint) {
        return x == y;
    }
}
