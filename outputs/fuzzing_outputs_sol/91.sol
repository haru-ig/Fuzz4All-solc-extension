pragma solidity ^0.8.0;
contract MyCallsCallAndFallbackFunctionThree {
    function getData(uint k) public returns (uint256 x) {}
    uint256 x;
    receive() external payable { require(tx.origin == address(this), "Invalid origin.");}
    fallback() public payable { }
}

pragma solidity ^0.8.0;
contract MyCallsCallAndFallbackFunctionTwo {
    function setContractB(address _contractB) public { }
    function getDataB() public view returns (uint256 x) {}
    uint256 x;
    receive() external payable { require(tx.origin == address(this), "Invalid origin.");}
    fallback() public payable { }
}
