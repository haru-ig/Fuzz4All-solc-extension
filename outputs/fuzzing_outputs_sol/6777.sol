pragma solidity ^0.8.0;
contract Mover {
    uint storage counter = 0;
    uint public value;
    function Fallback(address ) public {
        counter++;
        value =  msg.value;
    }
    function setNewValue(uint newValue) public returns (uint updatedValue) {
        updatedValue = counter;
        counter++;
    }
    function testMethod() public view returns (uint value) {
        value = counter;
    }
}

pragma solidity ^0.8.0;
contract MoverWithFallback {
    uint storage counter = 0;
    uint public value;
    function Fallback(address ) public {
        counter++;
        value =  msg.value;
    }
}

pragma solidity ^0.8.0;
contract CounterWithReceiveAndFallback {
    MoverWithFallback public receiver;
    function CounterWithReceive(address newReceiver) public {
        receiver = MoverWithFallback(newReceiver);
    }
    function Fallback(address ) public {
        receiver.testMethod();
    }
    function receive() external payable {}
}
