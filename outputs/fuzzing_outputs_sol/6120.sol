pragma solidity ^0.8.0;
contract T {
    uint private constant INITIAL_AMOUNT = 100;
    uint private counter;

    event Log(uint indexed last, uint amount);

    fallback () external payable payable withDataOnlyFallback {
        counter += 1;
        Log(counter, INITIAL_AMOUNT);
    }

    receive() external payable {
        counter += 1;
        Log(counter, INITIAL_AMOUNT);
    }
}

contract Test is T {};
contract Mutated {
    function dataOnlyFallback() public {
        uint initialValue;
        (initialValue, ) = T.calldata{value: 1 ether}("");

        T mutated = new T();
        initialValue = T.calldata{value: 1 ether}("");
        (initialValue, ) = T.calldata{value: 1 ether}("");
    }
}
