pragma solidity ^0.8.0;
contract contractWithMutatedFallback {
    bool b;
    payable fallback() external {
        b = false;
    }
    function shouldBeFalse() public view {
        assert(b);
    }
}

pragma solidity ^0.8.0;
contract contractWithMutatedFallbackAndReceive {
    bool b;
    address _foo;
    payable receive() external payable {
        _foo.transfer(address(this).balance);
        b = false;
    }
    function shouldBeFalse() public view {
        assert(b);
    }
}

pragma solidity ^0.8.0;
contract contractWithMutatedFallbackAndReceiveAndNormal {
    bool b;
    payable fallback() external {
        b = false;
        _foo.transfer(address(this).balance);
    }
    address _foo;
    function shouldBeFalse() public view {
        assert(b);
    }
}

pragma solidity ^0.8.0;
contract contractWithCalls {
    ContractWithSimpleFallback myContract;

    constructor(Address myAddress) {
        myContract = ContractWithSimpleFallback(myAddress);
    }
    function shouldBeFalse() public view {

        myContract.shouldBeFalse.value(1 ether);
        myContract.shouldBeFalse.call();

        myContract.receive().value(2 ether);
        myContract.receive().call.value(1 ether);
        myContract.receive().value.call(1 ether);

        myContract.receive.value(2 ether)();
        myContract.receive.value.call.value(1 ether)();
        myContract.receive.value.value.call.value(1 ether)();


        myContract.receive.value(2 ether, "");
        myContract.receive.value.call.value(1 ether, "");
        myContract.receive.value.value.call.value(1 ether, "");

    }
    function mutate() public {


        myContract.shouldBeFalse();


        myContract.receive.value(1 ether)();


        myContract.receive(2 ether);


        myContract.receive.value(1 ether).call();
    }
    function callReceive() public {
        myContract.receive().value.call(1 ether)();
        assert(myContract.b);
    }
