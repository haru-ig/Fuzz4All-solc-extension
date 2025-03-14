pragma solidity ^0.8.0;
contract SolidityWithFallback {
constructor () public { }
    function fallback() external payable {
        payable(fallbackData()).transfer(address(this).balance);
    }
    function fallbackData() public view returns (uint256) {
        return 1;
    }
    receive() external payable {
        fallback();
    }
}
