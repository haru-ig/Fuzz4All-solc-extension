pragma solidity ^0.8.0;
contract Test47 {
    uint[] public dynArr;
    constructor () public {
        dynArr.push(2);
    }
    function test() public {
        dynArr.push(5);
    }
}
