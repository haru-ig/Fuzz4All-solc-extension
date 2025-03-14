pragma solidity ^0.8.0;
contract MutatedCaller {

    uint public constant value = 7;
    receive() external payable {
        require(msg.value == Caller.value);
        Caller.value += 7 * value;
        emit NewValue(value, Caller.value);
    }
    event NewValue(uint oldValue, uint newValue);
}
 contract FallbackTest {


        function () external payable {}


        function fallback() external payable {}


        function () external {
                Receiver.payFromFallback(address(this));
        }


        ReceiveEmissionEvent receiveEmissionEvent;

        receiveEmissionEvent.emit;
}
