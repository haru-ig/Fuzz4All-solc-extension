pragma solidity ^0.8.0;
contract Emulator21 {
    address private owner = msg.sender;
    constructor() public {}
    function test() public pure returns(uint) {
        uint a;
        assembly {
            a := msg.value
        }

        return a;
    }

    function setNewOwner(address newOwner_) public {
        require(newOwner_!= address(0), "Zero address");
        require(owner!= newOwner_, "Same owner");
        owner = newOwner_;
    }
}
