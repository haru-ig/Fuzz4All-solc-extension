pragma solidity ^0.8.0;
contract Caller {
    FallbackFunction public fallback;
    address public contractToCall;
    constructor() {
        fallback = new FallbackFunction();
        contractToCall = address(fallback);
    }
    function publicCallAndFail() public payable returns(bytes memory){
        return callDataFailureFunction();
    }
    function publicCallAndSuccess() public returns(bytes memory){
        return callDataSuccessFunction();
    }
    function privateCallFailure() private {
        fallback.calculateAdd1(10, 10);
    }
    function privateCallSuccess() private {
        fallback.calculateAdd1(10, 10);
    }
    function callDataFailure() public payable returns(bytes memory){
        bytes memory data = abi.encodeWithSignature(
            "calculateAdd1(uint256,uint256)",
            10,
            10
        );
        return fallback.calldata(data);
    }
    function callDataSuccess() public returns(bytes memory){
        bytes memory data = abi.encodeWithSignature(
            "calculateAdd1(uint256,uint256)",
            10,
            10
        );
        return fallback.call(data);
    }
    function callDataFailureFunction() public payable returns(bytes memory){
        bytes memory data = abi.encodeWithSignature(
            "calculateAdd1(address,address)",
            address(this),
            address(this)
        );
        return fallback.calldata(data);
    }
    function callDataSuccessFunction() public returns(bytes memory){
        bytes memory data = abi.encodeWithSignature(
            "calculateAdd1(address,address)",
            address(this),
            address(this)
        );
        return fallback.call(data);
    }
    function callDataFailureFunctionWithReceive(bytes memory data) public payable returns(bytes memory){
        return fallback.calldata(data);
    }
    function callDataSuccessFunctionWithReceive(bytes memory data) public returns(bytes memory){
        return fallback.call(data);
    }
}
