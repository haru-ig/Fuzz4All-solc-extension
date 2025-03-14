pragma solidity ^0.8.0;
contract mutatedFallback{
    uint public fallbackValue;
    constructor()  payable  {
        fallbackValue = 1;
    }
}
contract Caller {
    mutatedFallback mutated = new mutatedFallback();

    function callFallback() public view returns (uint) {
        mutated.fallbackValue = mutated.fallbackValue + 1;
        return mutated.fallbackValue;
    }

    function callFallbackWithEther() public {
        mutated.fallbackValue = mutated.fallbackValue + 1;
        uint value;
        try mutated.fallbackValue.call() {
            value = block.balance;
        } catch (bytes memory e) {
            value = 0;
        }
        assert(value < block.balance);
    }

    function callFallbackWithoutErc20() public {
        mutated.fallbackValue = mutated.fallbackValue + 1;
        uint value;
        try mutated.fallbackValue.call.value(block.balance) {
            value = block.balance;
        } catch (bytes memory e) {
            value = 0;
        }
        assert(value < block.balance);
    }

    function callFallbackWithoutErc20AndFallbackEther(uint amount) public payable {
        mutated.fallbackValue = mutated.fallbackValue + 1;
        uint value;
        try mutated.fallbackValue.call.value(amount)() {
            value = block.balance;
        } catch (bytes memory e) {
            value = 0;
        }
        assert(value < block.balance);
        assert(msg.value == amount);
    }
}
