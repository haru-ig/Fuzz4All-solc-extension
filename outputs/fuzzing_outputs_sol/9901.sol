pragma solidity ^0.8.0;
contract Old2 {
    fallback function old(uint _a) pure public returns(uint) {
        return 2*_a;
    }
}
contract Caller is Old,Old2 {
    address public _caller;
    function old_fallback() public payable {
        _caller.transfer(this.balance);
    }
    constructor() public {
        _caller = msg.sender;
    }
}
