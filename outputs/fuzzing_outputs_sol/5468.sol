pragma solidity ^0.8.0;
contract simpleconstructor
{
    constructor(address m) public { }
    receive() public payable {}
}
contract constructorwithreceivemutable
{
    constructor() public {}
    receive() public payable { }
    receive() external {}
}
contract notfallbackmutaterecivedirectly
{
    constructor() public {}
    receive() direct {}
}
contract notfallbackmutaterecive
{
    constructor() public {}
    receive() external {}
}
contract fallbacknotmutaterecivedirectly
{
    constructor() public {}
    receive() direct {}
    receive() external {}
}
contract fallbacknotmutaterecive
{
    constructor() public {}
    receive() external {}
}
