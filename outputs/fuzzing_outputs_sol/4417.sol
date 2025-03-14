pragma solidity ^0.8.0;
contract User {
    fallback f;
}
contract User {
    receive payable sig;
}
contract Caller {
    function callUser() public {
        User user = User(f.fallbackContract);
        user.callFallbackFunc();
    }
}
contract Caller {
    receive payable sig;
}

contract FallbackToCaller {
    fallback userFallback;
    function callUserFallbackFunc(uint16 num) public returns(uint16) {
        userFallback.num = num;
        return userFallback.num * 10;
    }
}

pragma solidity ^0.8.0;
contract A {
    function call() public payable {
        msg.sender.transfer(1 ether);
        assert(false);
    }
}
contract A {
    receive() external payable {}
    receive() external {
        assert(false);
    }
}

contract FallbackToCaller {
    receive()
    external
    payable
    {
        return A.call.value(msg.value);
    }
}
contract FallbackToCaller {
    receive()
    external
    payable
    {
        A.withdraw.value(msg.value)();
        assert(false);
    }
}
contract FallbackToCaller {
    receive()
    external
    payable
    {
        A.withdraw(msg.value);
        assert(false);
    }
}
