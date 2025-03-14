pragma solidity ^0.8.0;
contract C {
    uint[] public array;
    uint public v;
    address public a;
    constructor() {
        array.push(1);
        v=1;
        a=msg.sender;
    }
    function pushTest() public {
        array.push(2);
        v=2;
        a=msg.sender;
    }
}
