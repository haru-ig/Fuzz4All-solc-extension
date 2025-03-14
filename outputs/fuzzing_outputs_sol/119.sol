pragma solidity ^0.8.0;

contract AnotherMutationsCallAndFallbackFunctionThreePlusFallbackFunction {

}

pragma solidity ^0.8.0;
contract Caller {
    function() external payable {}
    function callSimple() public {

        doSomething();
    }
    function callAndReceive(uint256 amount) public payable {

        doSomethingWithEther();
        receive(amount);
    }
    function callAndReceiveAndThrow() public payable {}
    function callReceiveAndThrow(uint256 amount) public payable {

        doSomethingWithEther();
        receive(amount);
        throw();
    }
    function callReceiveAndThrowAndThrow() public {

        doSomethingWithEther();
        doSomethingWithEther();
        receive(0);
        revmarshal(mload(0));
        throw();
    }
    function callAndReceiveAndThrowAndThrow() public payable {

        doSomethingWithEther();
        doSomethingWithEther();
        receive(0);
        throw();
    }
    function callAndThrow() public {

        throw();
    }
    function receive(uint256 amount) internal throws(uint) {
        throw();
    }
    function doSomethingWithEther() internal {
        doSomething();
    }
    function doSomething() public {
        throw();
    }
    function callSimpleUsingFallback() public payable {

        doSomethingUsingFallback();
    }
    function callAndReceiveUsingFallback(uint256 amount) public payable {

        doSomethingUsingFallbackWithEther(amount);
        receive(amount);
    }
    function callAndReceiveUsingFallbackAndThrowing() public payable {}
    function callReceiveAndThrowUsingFallback(uint256 amount) public payable {

        doSomethingUsingFallbackWithEther(amount);
        receive(amount);
        throw();
    }
    function callReceiveAndThrowAndReturn() public {

        doSomethingUsingFallbackWithEther(0);
        doSomethingUsingFallbackWithEther(1);
        receive(0);
        return();
    }
    function callAndThrowUsingFallback() public {

        throw();
    }
    function receiveUsingFallback(uint256 amount) internal {
        throw();
    }
    function doSomethingUsingFallbackWithEther(uint256 amount) internal {
        doSomethingUsingFallback();
    }
    function doSomethingUsingFallback() public {
        throw();
    }
}
