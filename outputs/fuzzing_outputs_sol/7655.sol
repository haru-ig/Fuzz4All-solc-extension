pragma solidity ^0.8.0;
contract SemanticEquivalence
{
    address public immutable addr;
    modifier onlyCaller() {
        if(msg.sender == addr) _;
    }

    fallback function () external payable onlyCaller { emit Storage(msg.sender, fallbackStorage()); }

    receive (bytes memory _data) public payable { emit Storage(msg.sender, fallbackStorage()); }
    struct Storage
    {
        address contractAddress;
        bytes memory data;
    }
    Storage public fallbackStorage;

    function fallback() public {
        fallbackStorage.data = msg.data;
    }
}
