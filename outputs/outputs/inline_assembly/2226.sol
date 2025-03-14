pragma solidity ^0.8.0;


contract Greeter {
    function greet(string name) pure virtual returns (string memory) {
        return  "Hello " + name;
    }
}
contract Greeter2 is Greeter {
    function greet(string name) override pure returns (string memory) {
        return  "Hello again, from Greeter2";
    }
}

contract Main {
    function main() public {
        greeter x1 = new Greeter2();
        greeter2 x2 = new Greeter2();
        msg.sender = x1.greet("Bob");
        msg.sender = x2.greet("Bob");
    }
}
interface Greeter {
    function greet(string name) pure virtual returns (string memory);
}

interface Greeter2 {
    function greet(string name) pure virtual returns (string memory);
}
```
