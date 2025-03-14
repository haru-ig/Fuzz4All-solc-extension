pragma solidity ^0.8.0;
contract SemanticallyEquivalenty4 {
    constructor () public {
        emit Log((msg.sender), "", "");
    }
    event Log(address value1, string value2, string value3);

    function Log(address value, string memory a, string memory b) public {
        emit Log(value, a, b);
    }
}
contract SemanticallyEquivalenty5 {
    constructor () public {
        emit Log(msg.sender, "", "");
    }
    event Log(address value1, string value2, string value3);

    function Log(address value, string memory a, string memory b) public {
        emit Log(value, a, b);
    }
}
