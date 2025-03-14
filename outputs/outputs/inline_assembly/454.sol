pragma solidity ^0.8.0;
contract SemanticallyEquivalentM32 {
    constructor () public {
        emit Log(msg.sender, "", "");
    }
    emit Log(address value1, string memory value2, string memory value3);
}
contract SemanticallyEquivalentM64 {
    constructor () public {
        emit Log(msg.sender, "", "");
    }
    emit Log(address value1, string[6] memory value2, string[6] memory value3);
}
