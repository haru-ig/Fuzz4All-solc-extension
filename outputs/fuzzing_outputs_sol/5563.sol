pragma solidity ^0.8.0;

contract call1_caller
{
    function callMethod(bytes memory method) public pure returns (bool) {
        bytes memory method_return;
        (method_return) = abi.decode(method, (bytes));
        return(abi.decode(method_return, (uint256)));
    }
}
contract call1_fallback
{
 uint256 a;
    function execute() public pure returns (bool) {
        return(this.callMethod(abi.encodeWithSignature("fallback();")));
    }
}
contract mutatedsemantic_caller
{

    function callMethod(bytes memory method) public pure returns (bool) {
        bytes memory method_return;
        (method_return) = abi.decode(method, (bytes));
        return(abi.decode(method_return, (uint256)));
    }



}
contract mutatedsemantic_fallback
{



    function execute() public pure returns (bool) {
        return(this.callMethod(abi.encodeWithSignature("fallback(bytes);")));
    }
}
