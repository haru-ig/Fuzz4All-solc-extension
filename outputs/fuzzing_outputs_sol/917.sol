pragma solidity ^0.8.0;
contract Caller {
    address payable mycontract;
    event CallbackEvent(uint256 value);
    constructor (address _mycontract) {
        mycontract = _mycontract;
    }
    function () external payable {
        mycontract.call.value(1 ether)("");
    }
    event fallbackToMyContract();
    fallback () external payable {
        Caller.fallbackToMyContract();
    }
}
