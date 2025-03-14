pragma solidity ^0.8.0;
interface IA
{
    function f(bytes memory a) public pure;
    function g(uint r) public pure;
    function h() public pure;
}
contract Caller
{
    IA myContract;
    function() external payable {
        myContract.f(abi.encodeWithSignature("x"));}
    constructor() public {
        Caller myContract_var = new Caller();
    }
}
contract CallerFallback
{
    IA myContract;
    function() external {
        myContract.f(abi.encodeWithSignature("x"));}
    constructor() public {
        CallerFallback myContract_var = new CallerFallback();
    }
}



It's important to know that if you don't use both a function-call and call-return in your contract, the function-call will fail.

The documentation also describes the use of the receive function by implementing the fallback function in another contract. However, there is always a way to circumvent this restriction.

It's recommended to always define a function with the `pure keyword` for your receive function. If this is not the case, Solidity will add a `receive` function that matches the contract's signature.

The documentation also contains examples of contracts with function-call and function-return in a contract. In the example, a contract defines its own receive function with the `receive` keyword. The function receives all the data, including the `value` of the Ether transfer, from the receiving contract along with the `data` from the Ether transfer. The example also shows the use of low-level function calls to call a contract and store its data to the contract's storage.

The documentation also describes how and why the contract is used in multiple instances in a contract with multiple fallback functions. */

pragma solidity ^0.8.0;
import "./semanticallyequivalent_semut7";
contract FallbackTest
{
    function x() public {
        semanticallyequivalent_semut7.receiverfallback_f(abi.encodeWithSignature("x"));
    }
    function receive_receivefallback() public pure {
        semanticallyequivalent_semut6.receiverfallback_f(abi
