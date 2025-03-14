pragma solidity ^0.8.0;
contract Mutator {

    event Log2();

    function payWithFallback(address payable _contract) public payable {
        _contract.transfer(msg.value);
    }

    function functionWithFallback(address payable _contract) public returns (uint8) {

        uint8 resultValue;
        if (_contract.call.value(20 - address(this).balance)(_contract, abi.encodeWithSignature("nonStandardFunction()")) == 0) {
            resultValue = 8;
        }

        emit Log2();

        return resultValue;
    }
}
contract Test {
    function runExample() public {
        Mutator2 mutator2;
        Mutator mutator;

        mutator2.payWithFallback(address(mutator));

        mutator.payWithFallback(address(mutator));
    }
}
