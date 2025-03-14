pragma solidity ^0.8.0;
contract CallerExample {
    function get() public payable returns (uint) {
        address calldata sender = msg.sender;
        require(msg.value == 1 ether, "WrongAmount");
        return address(this).balance;
    }
}

pragma solidity ^0.8.0;
contract CallerSimpleFallback {
    receive() external payable {}
}
pragma solidity ^0.8.0;
contract CallerFallback {
    receive() external {}
}
pragma solidity ^0.8.0;
contract Caller {
    function get() public returns (uint balance) {
        return address(this).balance;
    }

    function callWithEther() public returns (uint balance) {
        return address(this).balance;
    }

    function fallback() public {
        (uint balance, ) = CallerExample.get.value(msg.value)();
        assert(balance == address(this).balance);
        (balance, ) = CallerExample.get.value(msg.value)();
        assert(balance == address(this).balance);
        (balance, ) = CallerSimple.get.value(msg.value)();
        assert(balance == address(this).balance);
        (balance, ) = CallerSimpleFallback.get.value(msg.value)();
        assert(balance == address(this).balance);

        balance = CallerExample.callWithEther.value(msg.value)();
        assert(balance == address(this).balance);
        (balance, ) = CallerExample.callWithEther.value(msg.value)();
        assert(balance == address(this).balance);
        (balance, ) = CallerSimple.callWithEther.value(msg.value)();
        assert(balance == address(this).balance);
        (balance, ) = CallerSimpleFallback.callWithEther.value(msg.value)();
        assert(balance == address(this).balance);
    }
}
