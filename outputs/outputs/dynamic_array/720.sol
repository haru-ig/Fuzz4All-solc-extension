pragma solidity ^0.8.0;
contract test276 {
    uint[] public a = [];
    uint public b = 0;
    address public c;
    constructor() public {
        c = address(this);
    }
    function test() public {
        if (b == 1) a.push(b);
        else {
            a = [b];
            b = 1;
        }
    }
}
