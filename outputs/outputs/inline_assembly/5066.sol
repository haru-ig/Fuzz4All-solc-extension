pragma solidity ^0.8.0;
mapping(address => bool) public isFraud;
contract C {
    uint public n;
    constructor(uint n_) public {
        n = n_;
    }
    function f() public {
        if (n >= 0) {
            (address sender, bytes memory calldata data, bytes memory returnData) = msg.functioncall{value:500}(new bytes(0));
            isFraud[sender]++;
        } else {
            emit(Fraud({}));
        }
    }
	event Fraud(address guilty);
	constructor() public {}
}
