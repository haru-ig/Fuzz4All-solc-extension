pragma solidity ^0.8.0;
contract Governance
{
   function Governance() public { }
   modifier onlyGovernance
   {
        require(
            msg.sender == msg.sender,
            "!msg.Sender is not the Gov."
        );

       _;
   }
   function changeVote(address addr, uint vote) public onlyGovernance  {

       address old = vote;
        old = old.changeVote(true, false);
       vote = old.changeVote(true, false);
   }
}

pragma solidity ^0.8.0;
contract Governance2
{
        address owner;
        address[] public voters;
        address[] public unvoted;
        uint public constant MAX_VOTERS = 3;

        constructor() public   {
             owner = msg.sender;
        }
        modifier onlyGovernance2
        {
            require(msg.sender == voteOrNot(owner), "msg.sender not the Gov.");
            _;
        }
        function voteOrNot(address addr) public   {
                uint n = voters.length;

                if (n < MAX_VOTERS)
                    voters.push(addr);

               if (isVoted(addr))
                   return false;

                unvoted.push(addr);
                 return voters[idx(addr)];
              }

        function idx(address addr) public pure returns(uint)   {

                uint idx = 0;
                for (uint i = 0; i < voters
