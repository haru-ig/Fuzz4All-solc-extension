pragma solidity ^0.8.0;
contract C {
    uint[] public array1;
    uint public v1;
    uint256 public v2;
    constructor(uint x) public {
        array1.push(1);
        v1=1;
        v2 = 1;
    }
    function callTest(uint x) public  {
        v1=x;
    }
}
