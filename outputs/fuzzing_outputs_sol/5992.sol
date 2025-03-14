pragma solidity ^0.8.0;
contract ModiferWithFallback {
    uint constant number = 5;
    fallback() public {}

    function fallback() public payable {
        if (msg.value == 0) revert();
        number += 1;
        emit NumberUpdated(number);
    }

    event NumberUpdated(uint);
}
contract Caller {
    uint public input;
    constructor(uint _input) {
        input = _input;
    }

    function callModifer(Modifer _modifer) public {
        uint number = _modifer.add();

        if (number>10 {
            uint numberOneAndTwo = 1 + 2;
            uint numberThree = numberOneAndTwo + 3;
        } else {
            uint numberThreeWay = 3 + 4;
        }

    }

    function callModiferWithFallback(ModiferWithFallback _modifer) public {
        uint number = _modifer.add();

        if (number>10 {
            uint numberOneAndTwo = 1 + 2;
            uint numberThree = numberOneAndTwo + 3;
        } else {
            uint numberThreeWay = 3 + 4;
        }

    }
}
