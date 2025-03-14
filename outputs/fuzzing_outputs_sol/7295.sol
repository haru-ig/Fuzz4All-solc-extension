pragma solidity ^0.8.0;
contract MutatedFallbackExample {
    emit MyEvent();

    receive() external payable {
    }
    fallback() external payable {
        emit MyEvent();
    }
}

pragma solidity ^0.8.0;
contract WithAddress {
    address public _contract;
    address[] public _contracts;

    modifier onlyContracts() {
         require(msg.sender == _contract);
         _;
    }

    fallback() external payable {
        revert();
    }

    function () external payable {
        emit MyEvent(msg.sender);
    }
}
contract Caller {
    address public _contract;

    modifier onlyContracts() {
         require(msg.sender == _contract);
         _;
    }

    fallback() external payable {
        _contract.fallback.value(msg.value) {
            emit MyEvent(address.zero);
        }
    }
}
