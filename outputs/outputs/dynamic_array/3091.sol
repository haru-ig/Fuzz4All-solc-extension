pragma solidity ^0.8.0;
contract AssignmentModulation_V08 {
        uint[] public x;
    constructor () public {
        x = [0];
    }
    function doWork() payable public returns(uint){
        x[1];
        x[0];
        x[1];
        x[0];
        x[0];
       x[0];
       x[0];
       x[1];
       x[0];
    }
    function getAndStorePairs() public returns(uint){
        return x[1];
    }
}
pragma solidity ^0.8.0;
