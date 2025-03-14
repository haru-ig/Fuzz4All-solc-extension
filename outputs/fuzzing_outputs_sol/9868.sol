pragma solidity ^0.8.0;
contract Mutated1
{
    function mutate(uint _a) pure public returns(uint)
    { return 10*_a; }
}
pragma solidity ^0.8.0;
contract Mutated2
{
    constructor() public payable {}
    function mutate(uint _a) pure public returns(uint) { return 100*_a; }
}
