pragma solidity ^0.8.0;
contract Mutater335 is Mutater334 {
    constructor(address payable _payee, address payable _payee1) Mutater334(_payee) { }
    fallback() external {
        payee;
    }
    receive() payable internal {
        payee;
    }
}
contract FallbackReturn {
    constructor() {}
    function fallback() external pure returns (address) {
        return address(this);
    }
    function receive() no payable external pure returns (address) {
        return address(this);
    }
}
contract Fallback {
    function() external payable { }
    function payee() external pure returns (address payee);
    function receive() payable pure {}
}
