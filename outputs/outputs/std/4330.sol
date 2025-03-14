pragma solidity ^0.8.0;
contract Mutator
{
    constructor() public
        {}
    function MutateName(uint a, uint b) public
        {}
}

pragma solidity ^0.8.0;
contract Mutator
{
    constructor() public
        {
            address addr = msg.sender;
            delete addr;
            selfdestruct(addr);
        }
    function MutateName(uint a, uint b) public
        {}
}
