pragma solidity ^0.8.0;
contract Test {
    uint public k;
    constructor() public {
        k = 5;
    }
    function get() public view returns (uint, uint){
        return (k, 0);
    }
}
