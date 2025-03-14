pragma solidity ^0.8.0;
contract Modification {
    uint public storedData;
    function setValue(uint input) public {
        storedData = input;
    }
    function setValue2(uint input) public {

        storedData = input;
    }
}

pragma solidity ^0.8.0;
contract FailureFallback {
    function method() public {
        msg.data.transfer(address(this).balance);
    }
    function method2() public {
        StorageReceiver(0xE8888888800000000000000000000000000000000).setValue(20);
        msg.data.transfer(address(this).balance);
    }
    function method3() public {
        Modification(0xE88888888000000000000000000000000000000000).setValue(20);
        msg.data.transfer(address(this).balance);
    }
}

pragma solidity ^0.8.0;
contract ExampleContract {

    address public senderAddress;
    uint public amount;
    constructor(address sender, uint amountToSend) {
        sendTo(sender, amountToSend);
    }
    function sendTo(address recipient, uint amountToSend) internal {
        amount = amountToSend;
        senderAddress = recipient;
        recipient.transfer(amount);
    }
    function withdraw() public {
        senderAddress.transfer(amount);
    }
}
contract ExampleContract2 {

    address public senderAddress;
    uint public amount;
    constructor(address sender, uint amountToSend) {
        sendTo(sender, amountToSend);
    }
    function sendTo(address recipient, uint amountToSend) internal {
        amount = amountToSend;
        senderAddress = recipient;
        recipient.transfer(amount);
    }

    function() external {
        if (msg.value >= amount) {
            sendTo(msg.sender, msg.value - amount);
        } else {
            msg.data.transfer(amount - msg.value);
        }
    }
    function withdraw() public {
        senderAddress.transfer(amount);
    }
}
contract ExampleContract3 {

    address public senderAddress;
    uint public amount;
    constructor(address sender, uint amountToSend) {
        sendTo(sender, amountToSend
