pragma solidity ^0.8.0;
contract ValueWithFallback {
    address public valueToCaller;
    modifier restricted() {
        if (msg.sender == valueToCaller) {
            _;
        } else {
            revert();
        }
    }
    function example() public restricted {
        valueToCaller = msg.sender;
    }
}



pragma solidity ^0.8.0;
contract FallbackWithoutFallback {
    function () payable {
    }
}
pragma solidity ^0.8.0;
contract FallbackWithFallback {
    function () {
        return;
    }
}
contract FallbackWithFallbackAndContractWithoutFallback {
    address public valueToCaller;
    constructor(address _valueToCaller) {
        valueToCaller = _valueToCaller;
    }

    function () public payable {
        valueToCaller.transfer(msg.value);
    }
}
contract WithFallbackAndReceive {
    constructor(address _not_a_receive_function) {}
    function example() public payable restricted {
    }
}


pragma solidity ^0.8.0;
contract TransferableFallbackExample {
    address public receiveCalled;
    constructor(address _addressToReceiveCalled) payable {
        receiveCalled = _addressToReceiveCalled;
    }
    function example() public {
        receiveCalled.transfer(msg.value);
    }
    receive() external payable {
        receiveCalled.transfer(msg.value);
    }
}
contract EtherFallbackExample {
    address public receiveCalled;
    constructor(address _addressToReceiveCalled) payable {
        receiveCalled = _addressToReceiveCalled;
    }
    function example() public {
        receiveCalled.transfer(msg.value);
    }
}
contract CallerFallbackExample {
    address public transferedEther;

    function one() public payable {
        transferMeEther(50);
    }
    function two() public payable {
        transferMeEther(6);
        one();
    }
    function three() public payable {
        transferMeEther(8);
        two();
    }
    function transferMeEther(uint _amount) public {
        transferedEther.transfer(_amount);
    }
}
contract CallerAndCallerFallbackExample {
    address public transferedEther;
