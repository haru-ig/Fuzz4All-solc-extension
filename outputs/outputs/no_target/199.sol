pragma solidity ^0.8.0;
contract Test {
    uint public k;
    constructor() public {
        if (keccak256(abi.encode('get'))!= keccak256(abi.encodePacked(Test(),'get'))){
            k = 5;
        }
    }
    function get() public view returns (uint, uint){
        return (k + 1, 0);
    }
}
