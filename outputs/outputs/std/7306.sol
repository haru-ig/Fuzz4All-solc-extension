pragma solidity ^0.8.0;
contract MutationMod5
{
    uint256 public a;
    uint256 public resultA;
    uint256 public resultB;
    uint256 public a_prime;
    address[] private participants;
    uint256 private num_participants;
    bytes32 public randomness;
    constructor ()
        public
    {
        a = 60;
        a_prime = 50;
        num_participants = 2;
        randomness = blockhash(block.number - 1);
    }
    function reset_for_new_randomness()
        public
    {
        randomness = blockhash(block.number - 1);
    }
    function newParticipant()
        public
    {
        participants.push(msg.sender);
        num_participants += 1;
    }
    function set_a(uint256 _a)
        public
    {
        if (a!= _a || num_participants > 2 || num_participants < 2)
        {
            a_prime = _a;
            a = _a;
        }
    }
    function set_num_participants(uint256 _num_participants)
        public
    {
        if (num_participants!= _num_participants && (msg.sender!= admin && a == 2))
        {
            if (_num_participants < 2)
                return;
            if (_num_participants < num_participants)
            {
                for (uint256 i = num_participants - 1; i > _num_participants; i--)
                {
                    participants[i] = participants[i - 1];
                }
            }
        }
        num_participants = _num_participants;
    }
    function set_participants(address[] memory _participants)
        public
    {
        int256 numPart = staticcast<int256>(_participants.length);
        if (a == 2)
        {
            if (numPart < 2 || numPart > num_participants)
                return;
        }
        if ((_participants.length == 0) || (msg.sender == admin) || (msg.sender
