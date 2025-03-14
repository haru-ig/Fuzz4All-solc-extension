pragma solidity ^0.8.0;
contract Mutation {
    struct Caller {
        bool called;
    }
    function mutation(Caller caller) public {
        if (msg.value!= 0) {
            fallback();
        } else if (caller.called) {
            doSomething();
        } else {
            caller.called = true;
        }
    }
    function doSomething() public pure {

    }
}

pragma solidity ^0.8.0;
contract Caller {
    function call(address receiver, bytes calldata payload) public payable {
        (bool success, bytes memory result) = receiver.call{value: msg.value}{payload};
        require(success);
        require(abi.decode(result, (bool)));
    }
}
