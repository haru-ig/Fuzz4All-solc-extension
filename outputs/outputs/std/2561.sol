pragma solidity ^0.8.0;
contract HelloWorld1 {
    uint public value;
    function setResult(uint newValue) public
    {
        uint oldValue = value;
        value = newValue;
        emit MessageWithOldAndNewValue(oldValue, value);
    }
    event MessageWithOldAndNewValue(uint oldValue, uint newValue);
}


pragma solidity ^0.8.0;
interface TokenTransfer {

    function transfer(address[] memory recipientAddresses, uint[] memory amounts) external returns (bytes memory);
}

pragma solidity ^0.8.0;
contract TestTokenTransfer is TokenTransfer {
    address[] memory recipientAddresses;
    uint[] memory amounts;
    function setRecipient(uint[] memory amounts) public { recipientAddresses = amounts; }
    function setAmount(uint amount1, uint amount2) public
    { amounts = [amount1, amount2]; }

    function transfer(address[] memory recipientAddresses, uint[] memory amounts) external returns (bytes memory) {}

    function getAmounts() public view returns (uint[] memory){ return amounts; }
    function getRecipientAddresses() public view returns (address[] memory){ return recipientAddresses; }
