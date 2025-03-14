pragma solidity ^0.8.0;
contract SemanticallyEquivalent18 {
    constructor () public {
        emit Log((msg.sender), "", "0x00", "0x");
    }
    event Log(address value1, string value2, string value3, string value4);
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalent16 {
    constructor () public {
        emit Log((msg.sender), "", "", "");
    }
    event Log(address value1, string value2, string value3, string value4);
}
