pragma solidity ^0.8.0;
contract Mutater334WithFallback {
    address payable public payee;
    constructor(address payable _payee) {
        payee = _payee;
    }
    fallback() payable external {
        payee;
    }
}


pragma solidity ^0.8.0;
contract Caller {
    function callMe(address _c) public returns (bool) {
        (bool success,) = _c.call{value: msg.value}("");
        return success;
    }
}
