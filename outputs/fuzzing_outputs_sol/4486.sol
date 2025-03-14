pragma solidity ^0.8.0;
library Contract {
    uint f;
    function foo() public {
        assert(f == 0);
        f = 1;
    }
}
contract Example {
    bytes public data;
    uint f;
    address payable addressInFunction;
    constructor() {
        addressInFunction = msg.sender;
    }
    function doSomeCall(Caller caller, uint x, bytes memory memorydata) public {
        require(addressInFunction == msg.sender, 'CallerNotSender');
        require(data == memorydata, 'DataNotEqualCaller');
        contract ContractCaller is Caller {
            uint storedUint;
            function doSomething() public {
                storedUint = 4;
            }
        }

        caller.get();

        caller.pay(x);
        caller.doSomething();

        contractCaller.doCall();

        assert(storedUint == 4 && f == 1);
    }
}
