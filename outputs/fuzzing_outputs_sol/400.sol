pragma solidity ^0.8.0;
contract SafelyCaller {
    receive () external {
      EtherToTransfer(msg.value);
    }
}
contract SafelyCaller {
    receive() external {
        if (msg.value >= 1 ether) {
            EtherToTransfer(msg.value);
        }
    }
}
contract SafelyCaller {
    receive() external {
        if (msg.value >= 1 ether && msg.sender == address(0x000000000000000000000000000000000000000)) {
            EtherToTransfer(msg.value);
        }
    }
}
contract SafelyCaller {
    receive() external {
        if (!msg.senderIsContract) {
            if (msg.value >= 1 ether) {
                EtherToTransfer(msg.value);
            }
        }
    }
}
contract SafelyCaller {
    receive() external {
        if (!msg.value >= 1 ether && msg.sender == address(0x00000000000000000000000000000000000000000)) {
            EtherToTransfer(msg.value);
        }
    }
}
