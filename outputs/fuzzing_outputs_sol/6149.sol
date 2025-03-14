pragma solidity ^0.8.0;
contract MyEther {
    address admin;
    constructor() public {
        admin = msg.sender;
    }
    receivingEther(uint amount) public virtual payable {
        require(block.coinbase!= address(0x0), "Not a selfdestruct");
        require(amount > 0, "Amount cannot be zero");
        if (address(this).balance < amount) revert("You don't have enough ether");
        address(0xc8).transfer(address(this).balance - amount);

    }
}
