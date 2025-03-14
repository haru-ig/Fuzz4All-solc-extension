pragma solidity ^0.8.0;



import "@openzeppelin/contracts/token/ERC20/ERC20Detailed.sol";

contract MutatedContactsExample506 is ERC20Detailed {
    constructor() {
        super("MutatedContactsExample506", "", 1000000000000);


    }

    modifier isCallerOrParent(address callerAddress, address parentAddress) {
        require(callerAddress == msg.sender || msg.sender == parentAddress, "CallerAddressNotParent");
        _;
    }

    modifier restricted() {
        require(msg.sender == parentAddress, "CallerAddressNotParent");
        _;
    }


    modifier onlyMinter() {
        require(isMinter(msg.sender), "CallerIsNotMinter");
        _;
    }


    modifier onlyOwner() {
        require(isOwner(msg.sender), "CallerIsNotOwner");
        _;
    }
}
