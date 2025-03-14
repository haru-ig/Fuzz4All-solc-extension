pragma solidity ^0.8.0;
contract Caller {
    function _fallback() public {
        selfdestruct(address(this));
    }
    fallback () public {
        selfdestruct(address(this));
    }
}

pragma solidity ^0.8.0;
contract ContractCall {
    payable public fallback_caller;
    address public fallback_contract;
    address public fallback_contract2;

    constructor(address addr) internal {
        this.fallback_caller = payable(addr);
        this.fallback_contract = address(this);
        this.fallback_contract2 = addr;
    }


    function CallBackCallerFunctionWithFunction() public payable {
        fallback_caller.call{value: address(fallback_caller).balance}("");
    }

    function CallCallbackFromEtherWithFunction() public payable {
        fallback_caller.call{value: fallback_caller.balance}("");
    }

    function CallBackContractFromFunctionToContract() public payable {
        fallback_caller.send{value: fallback_caller.balance}(fallback_caller);
    }

    function CallBackCallerContractFromEther(uint balance) public payable {
        fallback_caller.send{value: balance}("");
    }
}






pragma solidity ^0.8.0;
contract Caller {
    address public _fallback_caller;
    address public _fallback_contract;
    address public _fallback_contract2;

    constructor(address addr) internal {
        _fallback_caller = address(this);
        _fallback_contract = addr;
        _fallback_contract2 = addr;
    }

    function CallBackCallerFunctionWithFunction() public payable {
        fallback_caller.call{value: address(fallback_caller).balance}("");
    }

    function CallCallbackFromEtherWithFunction() public payable {
        fallback_caller.call{value: fallback_caller.balance}("");
    }

    function CallBackContractFromFunctionToContract() public payable {
        fallback_caller.send{value: fallback_caller.balance}(fallback_caller);
    }

    function CallBackCallerContractFromEther(uint balance) public payable {
        fallback_caller.send{value: balance}("");
    }
}
/** The documentation describes how a contract can inherit from another contract without exposing it to the compiler. The syntax `inheritable ContractName` modifies the inheritance
