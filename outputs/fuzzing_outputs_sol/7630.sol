pragma solidity ^0.8.0;
contract FallbackModification
{
    address payable public addr;
    constructor(address payable _addr)
    {
        addr = _addr;
    }
}


pragma solidity ^0.8.0;

contract FallbackModification
{

    constructor() {}
    constructor(address _addr) {}


    function payableFallback(address payable _addr) public payable {}
}
contract FallbackModification
{

    constructor() {}
    constructor(address _addr) {}
    constructor() public {}
    constructor(address _addr) public {}
    constructor(address payable _addr) public {}
    constructor(address _addr) payable {}
    constructor(address _addr) payable {}


    function payableFallback() public payable {}
    function payableFallback(address _addr) public payable {}
}
