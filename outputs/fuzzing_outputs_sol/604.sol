pragma solidity ^0.8.0;
contract Fails
{
    constructor()
    {}
    fallback() external payable { }
}

pragma solidity ^0.8.0;
contract Simple
{
    constructor()
    {}

    function add(address account, uint amount) public returns (uint)
    { return 0; }
    function subtract(uint amount) public returns (uint) { return 0; }

    fallback() external payable { }
    function fallbackFunc2() { }
    function fallbackFunc3() external { }
}
