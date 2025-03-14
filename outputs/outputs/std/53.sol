pragma solidity ^0.8.0;
contract PiggyBank {
    address private owner;
    constructor() {
        owner = msg.sender;
    }

    function changeOwner(address newOwner) external {
        require(newOwner!= address(0), "0");
        owner = newOwner;
    }

    function sendTokens(address tokenHolder, uint tokens) public {
        tokenHolder.transfer(tokens);
    }

    function withdrawTokens(address tokenHolder, uint tokens) public {
        tokenHolder.call{value: tokens}("");
    }

    function withdrawEther(address tokenHolder) public payable {
        require(msg.value >= 0.1 ether, "invalid request");
        tokenHolder.call{value: msg.value}("");
    }
}
