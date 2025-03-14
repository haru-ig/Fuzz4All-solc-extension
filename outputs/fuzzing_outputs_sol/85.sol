pragma solidity ^0.8.0;
contract MyCallsCallAndFallbackFunctionThree {
    function setData(address a, uint k, uint256 y) public {}
    uint256 x;
    receive() external payable {   x = 1; }
    fallback() external payable
    {
        payable(a).transfer(1);   x = 1;
    }
}

pragma solidity ^0.8.0;
contract MyCallsCallAndFallbackFunctionFour {
    function setData(address a, uint k, uint256 y) public {}
    uint256 x;
    receive() external payable {   x = 1; }
    fallback() external
    {
        x = 1;
        a.call{value:1 ether}("");   x = 1;
    }
}

pragma solidity ^0.8.0;
contract MyCallsCallAndFallbackFunctionFive {
    function setData(uint k, uint256 y) public {}
    uint256 x;
    receive() external payable {   x = 1; }
    fallback() external payable {
        x = 1;
        a.call{value:0}(abi.encode(bytes1(0)));   x = 1;
    }
}
