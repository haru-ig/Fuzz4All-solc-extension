pragma solidity ^0.8.0;
contract Caller {
    address payable addr;
    constructor() {
        addr = payable(0xdeadbeefdeadbeefdeaddeadbeefdeadbeefdeadbeefdeadbeef);
    }
    fallback() public {
        addr.transfer(address(this).balance);
    }
}
