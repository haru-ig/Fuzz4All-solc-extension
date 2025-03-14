pragma solidity ^0.8.0;

contract MyCallsCallAndFallbackFunctionTwo {
    uint256[3] x;
    constructor() public
    {
        x = 1;
    }
    function setData(uint k, uint y) public
        {
            x[k] = y;
        }
    fallback() external payable
    {
        x = 2;
    }
    function getData(uint k) public view returns (uint)
        {return x[k]; }
}
contract MyCallsReceiveAndFallbackFunctionTwo {
    uint256[3] x;
    receive() external payable
    {
        x = 2;
    }
    fallback() external payable
    {
        x = 2;
    }
    function setData (uint k, uint y) public {x[k]=y;}
    function getData(uint k) public view returns (uint) {return(x[k]); }
}

contract MyCallsCallAndFallbackFunction{
    uint value;

    function setData(uint y) public { value=y; }






}
contract MyCallsFallbackFunctionThree{
    uint x;
    function execute() public payable{x=2;}
    fallback() external payable{x=2;}
}

contract MyFallbackFunction {
    uint a;
    uint b;
    function calculate(uint a, uint b) public { a=b+1;b=b++;}
    fallback() external payable {
        a = 2;
    }
}
contract MyFallbackFunctionThree{
    uint c;
    function execute() public payable{c=2;}
    fallback() external payable{
