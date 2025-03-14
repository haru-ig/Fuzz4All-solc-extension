pragma solidity ^0.8.0;
contract Mutated {
    address payable address_;
    constructor(address payable _address) {
        address_ = _address;
    }
    function callToVoid() external payable { address_.call{value: msg.value}(""); }
}
contract Caller is Mutated {
    function receive() external { callToVoid(); }
}

pragma solidity >=0.8.0 <0.9.0;
contract EtherStorage {
    address payable storedAddress;
    event Added(address stored);
    constructor() { storedAddress = payable(msg.sender); }
}
contract FallbackExample {
    function fallback() external payable { storedAddress.transfer(msg.value); }
}
