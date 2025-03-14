pragma solidity ^0.8.0;
contract B is A {
    uint256 constant NUMBER = 250;
    constructor() {
        _incrementNumber();
        _incrementNumber();
        _incrementNumber();
        _incrementNumber();
    }
    function _incrementNumber() internal {
        NUMBER++;
    }
}
contract C {
    address payable immutable _deployer;
    constructor() {
        _deployer = msg.sender;
    }
    function deposit() public payable {
        _deployer.transfer(address(this).balance);
    }
    function withdraw() public payable {
        (bool withdrawn,) = address(msg.sender).call{value: address(this).balance}('');
        require(withdrawn, "Failed to retrieve funds");
    }
}
contract D is B {
    uint constant PRICE = 1000 ether;
    constructor() {
        B(address(msg.sender)).deposit{value: PRICE}();
    }
}
contract E {
    uint constant PRICE = 500;
    constructor() {
        B(msg.sender).deposit{value: PRICE}();
    }
}
