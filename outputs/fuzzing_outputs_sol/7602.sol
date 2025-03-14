pragma solidity ^0.8.0;
contract Caller1
{
    uint public x;
    constructor() public {
        x = 0;
    }
    function fallback() public payable {
        x += 1;
    }
}



contract Caller0
{
    uint public x = 0;
    constructor() {}
    function fallback() public payable {
        x += 1;
    }
}

contract Caller3
{
    uint public x = 0;
    constructor() public {
    }
    function fallback() public payable {
        x += 1;
    }
}

contract Caller4
{
    uint public x = 0;
    uint public y;
    constructor() public { y = 1; }
    modifier always_succeeds {
        require(false, "contract did not fail");
        _;
    }
    function fallback() public payable {
        x += 1;
    }
}



contract Caller5
{
    uint public x = 0;
    uint public z;
    constructor() public { z = 1; }
    function fallback() public always_succeeds {
        x += 1;
    }
}

contract Caller6
{
    uint public x = 0;
    uint internal z;
    constructor() public { z = 1; }
    function fallback() public always_succeeds {
        x += 1;
    }
}
