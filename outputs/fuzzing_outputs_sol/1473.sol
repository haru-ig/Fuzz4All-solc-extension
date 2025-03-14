pragma solidity ^0.8.0;
address payable contract_address_that_should_fail;
contract SemanticMutationsExample2 {
    function semanticMutatedExample(address _addr) public {
        contract_address_that_should_fail = _addr;
    }
    address payable contract_address_that_should_fail;
}
contract SemanticMutationsExample3 {
    function semanticMutatedExample(address payable _addr) public receive() {
        smartContract1 = _addr;
    }
    address payable smartContract1;
}

pragma solidity ^0.8.0;
contract SemanticMutationsExample4 {
    function semanticMutatedExample(address payable _addr) public {
        smartContract1 = _addr;
    }
    address payable smartContract1;
}

pragma solidity ^0.8.0;
contract Caller {
    function payableCallWithFallback() public returns (uint256) {
        (, uint256 x, ) = safeToPayableCallWithFallback(address(smartContract1));
        return (x + 1);
    }
    function payableCallWithoutFallback() public payable returns (uint256) {
        (, uint256 x, ) = payableToCallWithoutFallback(address(smartContract1));
        return (x + 1);
    }
    function nonPayableCall() public {
        (, uint256 x, ) = nonPayableToCallWithoutFallback(address(smartContract1));
        return (x + 1);
    }
    function payableToCallWithoutFallback(address _contract) public payable returns (uint256) {
        (uint256 x, ) = address.delegatecall(
            abi.encodeWithSignature(
                "nonPayableAndReturnValueReturning(address)", _contract)
        );
        return (x + 1);
    }
    function nonPayableToCallWithoutFallback(address _contract) public returns (uint256) {
        (uint256 x, ) = address.delegatecall(
            abi.encodeWithSignature(
                "payableToCallWithoutFallbackAndReturnValueReturning(address)", _contract)
        );
        return (x + 1);
    }
    function safeToPayableCallWithFallback(address payable _contract) public returns (uint256) {
        (uint256 x, ) = _contract.call{value: msg.value}("");
        return (x + 1);
