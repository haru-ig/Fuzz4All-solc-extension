pragma solidity ^0.8.0;
contract Test48 {
    uint[] public dynArr;
    constructor () public{
        dynArr.push(1);
        dynArr.push(2);
    }
    function setTest() public {
        dynArr.push(3);
    }
    function test() public pure {
        dynArr.push(4);
    }
}
