pragma solidity ^0.8.0;
contract MyCallsCallAndFallbackFunctionThree {
    uint256 [3] data;
    function setData(uint y) public { data = [y, x, x + y]; }
    uint256 x;
    function getData(uint k) public view returns (uint z)
    { z = data[k]; }
    receive() external payable { x = 1; }
    fallback() public payable
     {
        x = 1;
    }
}

pragma solidity ^0.8.0;
contract MyCallsCallAndFallbackFunction {
    uint256 y;
    function f() public { y = 1; }
    uint256 x;
    function g() public returns (uint256)
    {
        x = 2;
        f();
        return x;
    }
    receive() public {
        x = 2;
    }
    fallback() payable
    {
        x = 2;
    }
}
