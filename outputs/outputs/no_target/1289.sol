pragma solidity ^0.8.0;
contracts Mutate_0009
{
    uint w1 = 0;
    uint w2 = 0;
    uint w3 = 0;
    bytes1 b1;
    bytes1 b2;
    bytes1 c;
    uint constant n1 = 0;
    uint constant n2 = 2**16 + 1;
    uint x1 = 0;

    modifier onlyme(string memory _contractName)
    {
        require(msg.sender == this);
        _;
    }

    constructor() public
    {
        OwnedBy owner = new OwnedBy();
        owner.addOwner(msg.sender);
        msg.sender.transferEther(100);
        w1 = 0;
        w2 = 0;
        w3 = 0;
        b1 = b2;
        x1 = x;
        x = n1;
    }
}
