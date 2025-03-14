pragma solidity ^0.8.0;
contract Baz {
    address public a = address(49);
    address public a2;
    fallback function () { }
    constructor() public {
        a2 = 49;
    }
}
contract NotNew {
    address public a = a;
    address public b;
    address public c;
}
