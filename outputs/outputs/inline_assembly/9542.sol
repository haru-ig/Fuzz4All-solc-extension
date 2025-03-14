pragma solidity ^0.8.0;
contract A {
    modifier A1 {
        b3 = true;
        _;
    }
    modifier A2 {
        assert(b3);
        _;
    }
    bool b3 { get; set; }
    constructor() {}
    fallback() external payable {
        { A2(A1()) }
    }
    receive() external payable {
        assert(b3);
    }
}



pragma solidity 0.8.4;

contract Greeter {
    string public currentGreeting = "Hello";

    function greet() public {
      string memory greetings;
      greetings = currentGreeting;
      currentGreeting = "Hi there";
      emit GreetingUpdated(greetings);
    }

    event GreetingUpdated(string _newValue);
  }
pragma solidity 0.8.3;
contract ExtendedContract {
    function sayHi() public view returns (string memory) {
        return string(abi.encodePacked('Hi, ', Greeter.currentGreeting));
    }
}


pragma solidity 0.8.3;
contract Greeter2 {
    struct Greeting {
      string currentGreeting;
      address payable friend;
    }
    address payable currentFriend;
    mapping(address => Greeting) greetings;
    event newFriend(address friend, address payable friendAddress);
    constructor() {
        greetings[msg.sender].currentGreeting = Greeter.currentGreeting;
    }

    function greet() public returns (void) {
        greetings[msg.sender].currentGreeting = "Hello, " + Greeter.currentGreeting + "!";
        emit newFriend(msg.sender, currentFriend);
    }

    modifier GreetingIsSet {
        require(Greeter.currentGreeting!= "Hello, ", "Greeter.currentGreeting is empty!");
        _;
    }

    function setNewFriend(address payable _friend) public GreetingIsSet{
        Greeter2.Greeting memory greeting = Greeter.currentGreeting;
        greeting.friend = _friend;
        greetings[msg.sender] = greeting;
        emit newFriend(msg.sender, _friend);
    }
}
