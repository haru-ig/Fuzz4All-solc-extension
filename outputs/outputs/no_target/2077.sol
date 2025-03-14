pragma solidity ^0.8.0;
contract Removal {
    address payable public a;
    address payable public b;
    address payable public c;
    constructor(address payable _a) public {
        a = _a;
        b = _a / 8;
        c = 0;
    }
}
