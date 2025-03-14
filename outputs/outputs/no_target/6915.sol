pragma solidity ^0.8.0;
contract MigrationsMock {
    address public sender;

    constructor(address _sender) public {
        sender = _sender;
    }

    function test() public payable {
        sender.transfer(address(this).balance);
    }
}

contract PrecompMock is MigrationsMock {
    address public sender;

    constructor(address _sender) public {
        sender = _sender;
    }

    function fallback() external payable {
    }

    function test() public {
        sender.transfer(address(this).balance);
    }
}
