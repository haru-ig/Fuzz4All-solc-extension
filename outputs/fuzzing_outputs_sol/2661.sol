pragma solidity ^0.8.0;

contract AbstractContractWithMultipleFunctions {
    function aFunction(uint) internal virtual returns (uint) {
        return 42;
    }
    function anotherFunction(uint) internal virtual returns (uint) {
        return aFunction(msg.value);
    }
}


pragma solidity ^0.8.0;
contract Caller {
    AbstractCallWithFallback fallbackContract;
    uint public counter = 0;

    constructor(string memory name, string memory) public {
        fallbackContract = new AbstractCallWithFallback();

        fallbackContract.fallback();
    }

    function receive() public payable {
        fallbackContract.onFallback(payable(msg.sender));
    }

    function increaseCounter() public {
        counter++;
    }

    function getCounter() public view returns(uint) {
        return counter;
    }

    function increaseCounterAndCallFunction() public {
        increaseCounter();
        fallbackContract.myFunction(1);
    }

    function myFunction(uint) public view returns(uint) {
        return counter;
    }

    function callFallbackWithPayable() public {
        fallbackContract.fallback.value(1 ether)();
    }
}
