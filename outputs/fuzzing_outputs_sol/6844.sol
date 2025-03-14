pragma solidity ^0.8.0;
contract Caller {
    receive() payable external {
        emit Receive();
    }

    function transfer(address payable receiver, uint value) external {
        if (receivers.length == 0) {
            receivers.push(receiver);
            values.push(value);
        } else {
            for (uint i=0; i<receivers.length; ++i) {
                if (receivers[i] == address(0)) {
                    receivers[i] = receiver;
                    values[i] = value;
                    return;
                }
            }
        }
    }

    uint counter;
    uint[] memory values;
    address[] memory receivers;
}
