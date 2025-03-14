pragma solidity ^0.8.0;
contract Mutated {
    function doSomething() public {

    }
}

pragma solidity ^0.8.0;
import "./Mutated.sol";
contract NonFallbackWithFallback {
    address callerAddress;
    mapping(address => string) code;
    constructor() {
        code[bytes4(type(Mutated).functionSignature)] = "Fallback";
    }
    fallback() public {
        require(msg.value == 1 ether);
        Mutated myMutation = Mutated(callerAddress);
        Mutated.doSomething();
        Mutated.doSomething();
        Mutated.doSomething();
    }
}
