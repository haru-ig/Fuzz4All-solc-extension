pragma solidity ^0.8.0;
contract Greeter {

    enum Greeting {Hello, Bye}

    function greet()
        public
    {
        Greeting calldata _greeting = Greeting.Hello;
        emit Hello(_greeting);
    }

    modifier Hello(Greeting calldata _greeting)
    {
        if (_greeting == Greeting.Hello) {
            _;
        }
    }

    function greetBye()
        public
        view
        returns (bool)
    {
        bool calldata _bye = false;
        emit Bye(_bye);
        return _bye;
    }
}
