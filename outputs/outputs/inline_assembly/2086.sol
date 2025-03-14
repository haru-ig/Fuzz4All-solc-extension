pragma solidity ^0.8.0;
contract MutatedSameGen
{
    address[] public candidates;
    address[] public owners;
    uint[] public payees;
    mapping (address => bool) public whitelisted;
    address owner;
    uint ownerID;
    uint lastID;
    uint lastIDCandidate;
    uint lastIDOwner;
    uint lastIDPayee;
    uint numOwners;

    Event EventWhitelistCandidate(address indexed candidateAddress, address indexed ownerAddress, uint indexed ownerID, uint indexed id);
    Event EventWhitelistOwner(address indexed ownerAddress, uint indexed id);
    Event EventWhitelistPayee(uint indexed id, uint indexed amount);

    constructor () { }
    modifier OnlyOwners { require(msg.sender == owner, "Only owner can call this function!"); _; }
    modifier NotOwner { require(msg.sender!= owner, "You cannot call this function as its owner!"); _; }

    function setUp(
        address _owner,
        uint _ownerID,
        uint _lastID,
        uint _lastIDCandidate,
        uint _lastIDOwner,
        uint _lastIDPayee,
        uint _numOwners
    )
        OnlyOwners
        NotOwner
        NoDataModifier()
        OwnershipNotChanged()
    {
        owner = _owner;
        ownerID = _ownerID;
        lastID = _lastID.add(1);
        lastIDCandidate = _lastIDCandidate;
        lastIDOwner = _lastIDOwner;
        lastIDPayee = _lastIDPayee;
        numOwners = _numOwners;
    }

    function setup(address[] memory _candidates, uint[] memory _payees)
         OnlyOwners
         NotOwner
         NoDataModifier()
         OwnershipNotChanged()
     {
        candidates = _candidates;
        payees = _payees;
        owners = new address[](candidates.length);
        for (uint i = 0; i < candidates.length; i++)
        {
            uint ownerId = i.add(1).mul(2);
            owners[i] = candidates[i];
            whitelisted[candidates[i]] = true;
            payees[ownerId] += _payees[i];
            whitelisted[candidates[i]] = true;
        }
    }

    function addCandidate(address _candidate)
         OnlyOwners
         NotOwner
