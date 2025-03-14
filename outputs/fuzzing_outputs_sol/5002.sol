pragma solidity ^0.8.0;
contract FallbackMutated {
    uint public payableFallbackFunctionCounter;

    function fallbackMutated() public pure {
        if (msg.value!= 1 ether) {
            revert("Incorrect values. Expect 1.");
        }

        uint amount = msg.value * 1000;
        fallbackFunctionCallForFallbackMutatedContract(amount);
        fallbackFunctionCallForFallbackMutatedContract(amount);

        fallbackFunctionCallForFallbackMutatedContract(amount);
        fallbackFunctionCallForFallbackMutatedContract(amount);
        fallbackFunctionCallForFallbackMutatedContract(amount);

        fallbackFunctionCallForFallbackMutatedContract(amount);

        fallbackFunctionCallForFallbackMutatedContract(amount);

        fallbackFunctionCallForFallbackMutatedContract(amount);

        fallbackFunctionCallForFallbackMutatedContract(amount);

        fallbackFunctionCallForFallbackMutatedContract(amount);
        fallbackFunctionCallForFallbackMutatedContract(amount);
        fallbackFunctionCallForFallbackMutatedContract(amount);

        fallbackFunctionCallForFallbackMutatedContract(amount);
        fallbackFunctionCallForFallbackMutatedContract(amount);
        fallbackFunctionCallForFallbackMutatedContract(amount);
    }

    function fallbackFunctionCallForFallbackMutatedContract(uint amount) public pure {
        uint initialBalance = address(this).balance;
        (uint balance, ) = address(new OwnedFallback).call{value: amount}("");
        uint currentBalance = address(this).balance;
        assert(currentBalance - initialBalance == amount, "Incorrect balance.");
    }

    fallbackfunctionMutatedWithStorage() public pure {
        address(new OwnedFallback).call(bytes{});
        assert(address(this).balance == msg.value, "Incorrect balance.");
    }

}

pragma solidity ^0.8.0;
contract Caller {
    mapping(address => uint256) public balances;
    mapping(address => mapping(address => uint256)) public allowed;


    constructor () {
        balances[msg.sender] = 10 ether;
        balances[msg.sender2] = 0.1 ether;
        allowed[msg.sender][0x7a77975a8a3cc50f66dcab7a6f0b1a1ec866b19b] = 1000;
        allowed[msg.sender2][0x7a77975a8a3cc50f66dcab7a6f0b1a1ec866b19b] = 1000;
    }

    function fallback() public pure {
        address(new OwnedFallback).call{value: msg.value}("");
    }

    function simple() public pure {
        balances[0x7a77975a8a3cc50
