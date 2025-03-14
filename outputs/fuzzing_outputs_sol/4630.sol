pragma solidity ^0.8.0;
contract Mutator {
    uint constant N = 10;
    mapping (address => bool) public voted;
    mapping(address => uint) public myContract;

    function shouldBe(uint next) public {
        require(myContract[msg.sender] == 0);
        myContract[msg.sender] = next;
    }

    function sendFunds() public payable returns(bool) {
        require(!msg.sender.call{value: msg.value}());
        return true;
    }

    function voted(address user) public view returns (bool) {
        return voted[user];
    }

    function vote(uint index) public {
        voted[msg.sender] = true;
        if (index >= 0 && index < N) {
            shouldBe(index);
        }
    }
}
