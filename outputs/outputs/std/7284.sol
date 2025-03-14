pragma solidity ^0.8.0;
contract Mutation
{
    uint public z = 0;
    constructor()
    {
    }
    function f1(uint a) public
    {
        z = a - 28;
    }
}
pragma solidity ^0.8.0;
contract Mutation
{
    uint private k = 0;
    uint public z = 0;
    constructor()
    {
    }
    function f1(uint a) public
    {
        z = (a - 6) * (k + 5) * (k - 4) * (k ^ 2) * (k * 7);
    }
}

pragma solidity ^0.8.0;

contract Mutation
{
    uint public z = 0;
    Address public ownerAddress;


    struct Data
    {
        uint public c;
        uint[] cArray;
    }
    Data private data;


    bytes private b1;
    bytes private b2;


    uint[] private m1;
    uint[] private m2;


    mapping(uint => uint) public mappings;

    constructor()
    {
        ownerAddress = msg.sender;
    }
    function f1(uint a) public
    {
        (b1, b2, m1, m2, mappings) = f0(a);
        z = a * (b1 > 0x28);
    }
    function f0(uint a) private pure returns (bytes memory, bytes memory, uint[] memory, uint[] memory, mapping(uint => uint) memory) {
        return
        (
            'Hello'.repeat(21),
            'Hello'.bytecode(),
            b'Hello'.uints(21),
            bytes(uints(21)),
             mappings
        );
    }
}
