pragma solidity ^0.8.0;
interface MyInterface {
    function functionWithResult() public pure returns (string memory, IMyInterface);
}
contract SampleInterfaceCall {
    function callA(string memory) public pure returns (string memory);
    function callB(MyInterface) public payable;
    function callC(Caller) public;
}
