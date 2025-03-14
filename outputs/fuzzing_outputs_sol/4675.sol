pragma solidity ^0.8.0;

contract MutatorAndFallback {
    uint internal count = 10;
    function shouldBe(uint counter) internal pure returns (uint) {
        count = count + 1;
        return counter;
    }
    receive() external payable {

        count = count + 1;
    }
    receive() external {
        require(msg.value > 5 ether, "Contract does not have sufficient balance");

        count = count + 1;
    }
    receive() external pure {

        count = count + 1;
    }
}

contract MutatorWithoutFallback {
    uint internal count;
    receive() external payable {}
    receive() external pure {
        count = count + 1;
    }
    receive() external {}
    receive() payable {}
}
