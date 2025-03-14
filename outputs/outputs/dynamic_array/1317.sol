pragma solidity ^0.8.0;
contract EquivalentMutatedDynamicArrayTypeCheck {
    struct ArrayItem1 { bool b; }
    ArrayItem1[] array;
    uint index = 0;
    uint public length;
    bool public modified;
    uint modifiedIndex;
    address addr1;
    uint addrIndex;
    uint addrAfterArrayChange;
    constructor ()
    {
        addr1 = msg.sender;
        index = 1;
        length = 1;
        ArrayItem1 memory a0;
        a0.b = true;
        array.push(a0);
        length = 2;
        index = 2;
        array[2].b = false;
        modified = false;
        modifiedIndex = 2;
        modify();
    }

    function modify()
    {
        modified = true;
        modifiedIndex = index;
    }

    function setLength(uint _newLength) public {
        modify();
        addrIndex = 0;
        addr = addr1;
        length = _newLength;
    }
}
contract EquivalentStructWithDynamicArrayField
{
    struct FootballPlayer {
        address id;
        uint score;
    }
    uint public count;
    FootballPlayer[] players;
    uint public addrIndex;

    constructor()
    {
        addrIndex = 0;
    }

    function addNewPlayer(address inId, uint inScore) public
    returns (bool) {
        addrIndex = 0;
        players.length++;
        count++;
        players[players.length - 1].id = inId;
        players[players.length - 1].score = inScore;
    }
}
contract EquivalentStructWithEfficientArray
{
    struct FootballPlayer {
        address id;
        uint score;
    }
    struct FootballPlayers {
        uint count;
        FootballPlayer[] players;
    }

    uint public count;
    FootballPlayers players = FootballPlayers(count, new FootballPlayer[](4));
    address addr;


    constructor() public
    {
        count = players.count;
    }
}
contract EfficientDynamicArrayType
{
    address addr;
    uint addressIndex;
    uint16 public length = 4;
    uint myDynamicUint16ArrIndex;
    uint public
