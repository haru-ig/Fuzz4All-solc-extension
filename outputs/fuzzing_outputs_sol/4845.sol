pragma solidity ^0.8.0;
contract Greeter {

    bool GREETING = true;
    event GreetingChanged(bool newGreeting);

    function doGreeting() public {
        emit GreetingChanged(GREETING);
    }

    function toggleGreeting() public returns (bool previousGreeting) {
        if (GreetingChanged(GREETING) == true) {
            previousGreeting = GREETING;
            GREETING =!GREETING;
        }
    }
}
