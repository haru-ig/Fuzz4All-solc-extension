pragma solidity ^0.8.0;
contract Fallback {
    function transferFrom(address from) public payable {}
}

address TRANSFERS = 0xDEADBEEF00000000000000000000000000000000000000000000000000000;

address AMOUNT = address(this);

Fallback(TRANSFERS).transferFrom(msg.sender);















address contractCreated;
constructor() {
    contractCreated = new Transfers();
}
