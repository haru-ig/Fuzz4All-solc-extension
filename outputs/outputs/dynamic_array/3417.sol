pragma solidity ^0.8.0;
contract B {
    address[] public array;
    uint public v;
    constructor() {
        array[0]=msg.sender;
        v=1;
    }
    function pushTest() public {
        array[0].push(2);
        v=2;
    }
}
