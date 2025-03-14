pragma solidity ^0.8.0;
contract A
{
    uint a;
    constructor() public { a = 1; }
}
contract B is A
{
    constructor() public { a = 2; }
}
contract C
{
    uint a;
    B b;
    constructor() public { a = 3; }
    constructor(b B) public { a = 4; }
}
contract D is B { constructor() public { a = 5; }}
contract E is C { }
