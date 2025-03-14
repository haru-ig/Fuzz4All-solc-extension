pragma solidity ^0.8.0;
contract C9 {
    uint public constant x = 1;
}

contract C10 {
    uint constant x = 1;
    uint constant y = 2;
}
contract C11 {
    bool public constant x = true;
    uint constant x2;

    function C11() public {
        x2 = x + 10 + 44;
    }
}
contract C12 {
    address public constant x = 0x0102030405060708090a0b0c0d0e0f10111213;
    uint constant y;

    function C12() public {
        y = x + 10;
    }
}
contract C13 {
    uint constant x = 1;
    uint constant y = 2;
}
contract C14 {
    mapping (address => uint) public constant y;
}
contract C15 {


    mapping (address => uint) public constant x;

}
contract C16 {
    uint constant x = 1;
    uint constant y = 2;

    constructor() public {
        x = y + 10 + 44;
        y = x + 10;
    }

    modifier onlyx() { require(x == 1); _; }
}
contract C17 {
    uint constant x = 1;
    uint constant y = 2;

    constructor() public {
        y = x + 10;
        x = y + 10;
    }

    modifier onlyx() { require(x == 1); _; }
}
contract C18 {
    uint constant x = 1;
    uint constant y = 2;

    constructor() public {
        x = y + 10 * 4;
        y -= y;
    }
}
contract C19 {
    uint constant x = 1;
    uint constant y = 2;

    constructor() public {
        x = 11;
        y += x;
        x -= y - x + x;
        x %= (y * x + 5);
        x *= 5 + (uint256(10000)).sub(1000);
    }
}
contract C20 {
    uint constant x = 1;
    uint constant y = 2;

    string foo;
    constructor() public {
        foo = x.to;
        y.to0 = x.to;
        x.to00 = x.to;
        x.to1 = 11 + x;
        x.to2 = x * 4 + 4.to;
        x.to3 = x * 5 + 5;
        x.to4 = x /
