pragma solidity ^0.8.0;
interface Greeter {
    function sayHello(uint256) public view returns (string memory);
}

pragma solidity ^0.8.0;
contract SimpleGreeter {
    address public greeter;
    constructor(address _greeter) public {
        greeter = _greeter;
    }
    function getGreeter(uint256 i) public view returns (address) {
        if (i == 0) return greeter;
        return msg.sender;
    }
    function checkGreeting() public {
        address checkAddress = getGreeter(g_greeting.add(i));
        Greeter proxy = Greeter(proxy(checkAddress));
        string memory greet = proxy.sayHello(0);
        require(greet == "Hello World0", "Greeting is incorrect.");
    }
}

pragma solidity ^0.8.0;
contract Proxy {
    address _target;
    constructor(address _target) public {
        _target;
    }
    function proxy(address _target) public view returns(address) {
        return _target;
    }
}
