pragma solidity ^0.8.0;
contract SolidityCaller {
    address payable private _new;
    receive() external payable {
        _new.transfer(msg.value);
    }
}

contract EtherReceiver {
    address payable private _receiver;
    function setReceiver(address receiver) public {
        _receiver = receiver;
    }
    receive() public {
        _receiver.transfer(msg.value);
    }
}
contract SolidityEtherReceiver {
    address payable private _receiver;
    function setReceiver(address receiver) public {
        _receiver = receiver;
    }
    receive() payable public {
        _receiver.transfer(msg.value);
    }
}
contract Test {
    function fallback() public {}
    function receive() public {
        uint256 value = msg.value;
    }
}
contract Caller {
    address payable private _new;
    receive() public {
        _new.transfer(msg.value);
    }
}
