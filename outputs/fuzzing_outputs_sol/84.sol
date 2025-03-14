pragma solidity ^0.8.0;
contract MyCallsCallAndFallbackFunctionSeven {
    uint256 [3] data;
    function setData(uint256 k, uint256 y) public { data[k] = y; }
    uint256 x;
    function getData() public view returns (uint)
    { return x; }
    receive() external payable { x = 1; }
    fallback() external payable
    {
        x = 2;
    }
}
contract Caller
{

    constructor () public payable
    {

        MyCallsCallAndFallbackFunctionThree contractThree = new MyCallsCallAndFallbackFunctionThree();
        contractThree.setData(0,3);
        uint256 val = contractThree.getData();
        contractThree.setData(1,7);
        contractThree.setData(2,9);
        require( contractThree.getData(1)==6, "error in set data" );
        require( contractThree.getData(2)==8, "error in set data" );
        require( contractThree.getData(0)==3, "error in GET data of the contract" );
    }
}
