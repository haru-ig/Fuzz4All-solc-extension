pragma solidity ^0.8.0;
contract HelloWorldContract {

    constructor() {}

    modifier hello {
        IAddressable.addressable().revert(message.value);
        _;
    }

    function add(uint a, uint b, uint c, uint result) public hello {
        result = a + b + c;
    }
}

pragma solidity ^0.8.0;
contract HelloWorldContract {
    modifier hello {
        IAddressable.addressable().revert(message.value);
        _;
    }

    function add(uint a, uint b, uint c, uint result) public {
        result = a + b + c;
    }
}
contract EmergencyWithdrawalContract {
    modifier onlyOwner { require(msg.sender == owner); _; }

    address owner;

    constructor() {
        owner = msg.sender;
    }

    function withdraw() public onlyOwner {
        uint256 amount = address(this).balance;
        address(address(0)).transfer(amount);
    }
}
