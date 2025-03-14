pragma solidity ^0.8.0;
contract Mutated2 {
    struct VoteInfo {
        uint256 vote;
        uint256 timestamp;
    }

    struct Votes {
        VoteInfo[] votes;
        uint256 numberOfVoters;
    }


    struct VotesMap {
        mapping(bytes32 => Votes) public votes;
    }

    uint256 private _totalVotes;
    uint256 private _currentAddress;
    mapping(bytes32 => uint256) private _addressToVoteCount;
    VotesMap private _votes;

    constructor(address _currentAddress) internal {
        _addressToVoteCount[_currentAddress] = _addressToVoteCount[_currentAddress] + 1;
        _totalVotes = _totalVotes + _addressToVoteCount[_currentAddress];
    }

    function addVote(bytes32 _address, uint256 _value) public {
        require(isValidAddress(_address));
        uint256 currentCount = _addressToVoteCount
