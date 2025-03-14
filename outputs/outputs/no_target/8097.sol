pragma solidity ^0.8.0;
contract Restricted {
    uint x;
    uint x_;
    constructor() {
        x = x_;
        x_ += x_;
    }
    modifier restricted() {
        x = x_;
        x_ += x_;
        _;
    }
}

pragma solidity ^0.8.0;
contract Main {
    address public sender;

    constructor() {
        restrict();
        sender = msg.sender;
    }

    modifier restrictedBy(address a) {
        emit restricted();
        assert(a == msg.sender || msg.sender is owner);
        _;
    }
    function restrict() internal restrictedBy(msg.sender) {}
    function owner() public view returns (address) {
        owner();
        return sender;
    }
    receive() external {}
}

pragma solidity ^0.7.0;
contract Main {
    address public sender;

    constructor() {
        restrict();
        sender = msg.sender;
    }

    modifier restrictedBy(address a) {
        emit restricted();
        assert(a == msg.sender || msg.sender is owner);
        _;
    }
    function restrict() internal restrictedBy(msg.sender) {}
    function owner() public view returns (address) {
        owner();
        return sender;
    }
    receive() external {}
}

contract Test {
    function runTest() public {
        Main.MainContract main;
        main = new Main();
        main._testRestrict();
    }
}
contract Main {
    reverted private _testRestricted;

    function _testRestrict() internal restrictedBy(msg.sender) {
        _testRestricted = true;
    }
    function restrictedBy(address a) public view returns (bool) {
        emit restricted();
        unrestricted();
        assert(a == msg.sender || msg.sender is owner);
        return false;
    }
    function owner() public view returns (address) {
        owner();
        return msg.sender;
    }
    receive() external {}
}
pragma solidity ^0.7.0;
