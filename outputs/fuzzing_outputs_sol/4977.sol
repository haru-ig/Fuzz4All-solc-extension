pragma solidity ^0.8.0;
contract NewCaller is Caller {
    function executeCall() public payable {

        Caller _caller = Caller(this);
        _caller.fallback();
    }
}
