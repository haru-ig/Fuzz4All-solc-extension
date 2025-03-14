pragma solidity ^0.8.0;
contract AssignmentModulation_V2 {
    uint[] public x;
    constructor () public {
        x = new uint[](2);
    }
    function doWork() payable public returns(uint) {
        x[0];
        (bool success, ) = payable(address(msg.sender)).call{value: msg.value}(new bytes(5));
        require(success);
        x[1];
        x[0];
        x[1];
        x[0];
        x[0];
       x[1];
       x[0];
    }
    function getAndStorePairs() public returns(uint){
        return x[0];
    }
}
