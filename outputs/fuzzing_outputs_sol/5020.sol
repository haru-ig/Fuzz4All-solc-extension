pragma solidity ^0.8.0;
contract FallbackMod {
    fallback function x() external payable { }
    function x(bytes memory) external nonpayable { }
    function x() public payable { }
    function x(int, uint) public nonpayable { }
}
