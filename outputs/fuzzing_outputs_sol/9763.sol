pragma solidity ^0.8.0;
contract ContractWithFallback {
    address payable func1_, func2_;
    bool executedFunc1_, executedFunc2_;
    function ContractWithFallback(address _func1, address _func2) {
        func1_ = _func1;
        func2_ = _func2;
    }
    receive() external payable { }
    function getAddress() view public returns (address) {
        return address_;
    }
    function executeFunc1() public {
        (executedFunc1_, ) = func1_.call.value(address_(0).balance)("");
        require(executedFunc1_ == false);
    }
    function executeFunc2() public {
        (executedFunc2_, ) = func2_.call(abi.encodeWithSignature("", address_(0).balance));
        require(executedFunc2_ == false);
    }
}
