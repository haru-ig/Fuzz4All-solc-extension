pragma solidity ^0.8.0;
contract Simple {
    address owner;
    uint public totalSupply;

    address[] participants;

    function Simple(uint initialSupply) public {
        totalSupply = initialSupply;
        owner = msg.sender;
    }

    function addParticipant(address addr) public {
        participants.push(addr);
    }

    function addParticipant(address[] memory newMembers) public {
        uint membersLength = newMembers.length;
        uint i;

        for (i = 0; i < membersLength; i = i + 1) {
            participants.push(newMembers[i]);
        }
    }

    function withdrawFunds() public {
        uint i;
        uint length = participants.length;
        address[] storage participantsCopy = new address[](length + 1);
        for (i = 0; i < length; i = i + 1) {
            participantsCopy[i] = participants[i];
        }
        participantsCopy[i] = msg.sender;
        payable(msg.sender).transfer(address(this).balance);
        participants = participantsCopy;
    }

    function () external {
        withdrawFunds();
    }

    function payout() public {
        withdrawFunds();
    }
}
pragma solidity 0.6.12;
contract Simple {
    Simple internal a;
    constructor() public {
        a.addParticipant(msg.sender);
    }
    fallback() external payable {
        a.withdrawFunds();
    }
    receive() external payable  {}
 }
pragma solidity ^0.8.0;
contract Test {
    uint x;
    constructor() public {
        x = 42;
    }
    fallback() external pure returns (uint) { return x; }
}
