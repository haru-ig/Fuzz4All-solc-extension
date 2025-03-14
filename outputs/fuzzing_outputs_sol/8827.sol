pragma solidity ^0.8.0;
contract Caller {
    bool canRead;
    bool canWrite;
    address receiver;

    function Caller() public {
        receiver = 0x89d24a6b4CcB1b6fAA2625fE562bDD9a23260359();
    }

    function setReceiver(address _receiver) public {
        require(msg.sender == receiver);
        receiver = _receiver;
    }

    function setCanRead() public {
        require(msg.sender == receiver);
        canRead = true;
    }

    function setCanWrite() public {
        require(msg.sender == receiver);
        canWrite = true;
    }

    function read() public returns(bool) {
        require(canRead);
        return true;
    }

    function write() public {
        require(canWrite);
        receive();
    }

    function receive() payable {
        assembly {

            sstore(0,0)
            ether
            sstore(0,add(0,(mload(0)+1)))
        }

        selfdestruct(receiver);
    }
}
