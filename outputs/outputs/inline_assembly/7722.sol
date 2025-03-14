pragma solidity ^0.8.0;
contract L20 {
        bool isCalled = false;
        assembly {
                isCalled := isCalled || false
        }
}
