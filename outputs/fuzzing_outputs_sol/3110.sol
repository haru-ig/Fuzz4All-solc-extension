pragma solidity ^0.8.0;
contract Contract13A<A> {
    fallback() external payable {
        A _a = A(msg.sender);
        _a.payableMethod();
    }
}
