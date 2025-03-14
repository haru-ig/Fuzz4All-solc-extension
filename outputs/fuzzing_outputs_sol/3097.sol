pragma solidity ^0.8.0;
contract Example12 {
    uint128 num;
    receive() external payable {
        num += 5;
    }
}
contract Example1 {
    function example() payable external {
        Example12 contractCallerRef = Example12(address(uint160(1)));
        contractCallerRef.transfer(msg.value);
    }
}
contract Example2 {
    contract Greeting {
        string greeting;
        function greet() public view {
            greeting = "Hello world";
        }
        function setGreeting(string calldata greetingStorage) public onlyOwner {
            greeting = greetingStorage;
        }
    }

    Greeting greetingInstance;
    receive() payable external {
        greetingInstance.setGreeting("Goodbye world");
    }
}
contract Example3 {
    receive() payable external {
        msg.sender.transfer(msg.value + 2);
    }

    receive() external payable {
        msg.sender.transfer(msg.value);
    }
}
contract Example4 {
    uint256 x;

    receive() payable external {
        x = msg.value;
    }

    receive() external payable {
        msg.sender.transfer(msg.value);
    }
}
contract Example5 {
    uint16 x;

    receive() payable external {
        x = msg.value;
    }

    receive() external payable {
        x = msg.value + 1;
    }
}
contract Example6 {
    receive() payable external {
        msg.sender.transfer(msg.value);
    }

    receive() external payable {
        x = 500;
    }
}
contract Example7 {
    uint16 x;

    receive() payable external {
        x = msg.value;
    }

    receive() external payable {
        msg.sender.transfer(msg.value);
    }
}
contract Example8 {
    uint16 y;

    receive() payable external {
        y = msg.value;
    }

    receive() external payable {
        msg.sender.transfer(y);
    }
}
contract Example9 {
    uint256 y;

    receive() payable external {
        y = msg.value;
    }

    receive() external payable {
        msg.sender.transfer(uint256(y) + 2);
    }
}
contract Example10 {
    event Greeting(string text);

    receive() payable external {
        Greeting({text: "Hello world"});
    }

    receive() external payable {
        Greeting({text: "Goodbye world"});
    }
}
contract Example11 {
    uint256 a;

    receive() payable external {
        a = msg.value - 15;
    }

    receive() external payable {
        a = a + 5;
    }
}
