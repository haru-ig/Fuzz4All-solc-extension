pragma solidity ^0.8.0;
contract SimpleMutation {
    function simpleMutation() public {
        revert("test", "This should fail");
    }
    fallback() external payable {}
}

pragma solidity ^0.8.0;
contract ReceiverMutation {
    bool internal success = true;
    fallback() external payable {
        emit FallbackEvent(success);
        success = false;
    }
    receive() external payable { }
}

pragma solidity ^0.8.0;
contract SenderMutation {
    event NewEvent(address sender);
    address owner;
    fallback() external payable {
        emit FallbackEvent(msg.sender);
    }
    receive() external payable { }
}

contract InvalidReceiverMutation {
    event NewEvent(uint x);
    address owner;
    fallback() external payable {
        emit FallbackEvent(13);
    }
    receive() external payable { }
    receive() payable {}
}

contract InvalidSenderMutation {
    event NewEvent(uint x);
    fallback() external payable {
        emit FallbackEvent(13);
    }
    receive() payable {}
}

contract SendersReturnAddress {
    event NewEvent();
    address owner;
    fallback() external payable {
        emit FallbackEvent(msg.sender);
    }
    receive() external payable { }
    receive() payable returns (address x, bool y) {x = msg.sender; y = true;}
}

pragma solidity ^0.5.17;
contract Caller {
    address contract1;
    fallback() external payable {
        callValue(contract1);
    }
    receive() external payable { }
    receive() payable returns (uint a) {a = 10; }
    function callValue(address contractAddress) public payable {
        contract1 = contractAddress;
    }
}
contract Caller {
    address contract2;
    fallback() external payable {
        messagePay(contract2);
    }
    receive() external payable { }
    receive() payable returns (uint a) {a = 10; }
    function messagePay(address contractAddress) public {
        contract2 = contractAddress;
    }
}
contract Caller {
    address contract1;
    fallback() external payable { callValue(contract1); }
    receive() external payable { }
    receive() payable returns (uint a) {a = 10; }
    function callValue(address contractAddress) public payable {
        contract1 = contractAddress;
    }
    function methodReturnAddress() external returns(address) {return contract1;}
}

pragma solidity ^0.5.17;
contract Caller {
    address contract2;
    fallback() external payable { messagePay(contract2); }
    receive() external payable { }
    receive() payable returns (uint a
