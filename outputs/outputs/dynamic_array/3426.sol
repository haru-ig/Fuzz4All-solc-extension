pragma solidity ^0.8.0;
contract C {
    uint[10] public array;
    uint public v;
    address public a;
    constructor() {
        array.push(1);
        v=1;
        a=address(1);
    }
    function pushTest() public {
        array.push(2);
        v=2;
        a=msg.sender;
    }
}
contract D {
    uint[10] public array;
    uint public v;
    uint public a;
    constructor() {
        array.push(1);
        v=1;
        a=2;
    }
    function pushTest() public {
        array.push(2);
        v=2;
        a=2;
    }
}
contract E {
    uint[10] public array;
    uint public v;
    uint public a;
    constructor() {
        array.push(1);
        v=1;
        a=2;
    }
    function pushTest() public {
        array.push(0);
        v=2;
        a=2;
    }
}
