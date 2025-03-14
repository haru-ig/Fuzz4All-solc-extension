pragma solidity ^0.8.0;
contract C {
    uint[3] public array;
    uint[3] public array2;
    uint v;
    uint[3] public array3;
    address public a;
    constructor() {
        array=[1, 2, 3];
        array2.push(3);
        array.push(4);
        v = 1;
        a=msg.sender;
    }
    function pushTest() public {
        array.push(5);
        array2.push(4223434);
        array.push(6);
        v = 2;
        a=msg.sender;
    }
}
