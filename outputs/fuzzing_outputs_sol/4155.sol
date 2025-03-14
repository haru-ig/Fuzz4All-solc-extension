pragma solidity ^0.8.0;
contract FallbackCaller {
    function testFallbackFunction() public {
        EtherToken();
    }
    fallback () payable public {
        EtherToken();
    }
}
interface EtherToken {
    function transfer(address account, uint256 amount) external;
    function transferFrom(address account, address from, uint256 amount) public view returns (bool);
    function balanceOf(address account) public view returns (uint256);
    function withdraw(uint amount) public;
}
