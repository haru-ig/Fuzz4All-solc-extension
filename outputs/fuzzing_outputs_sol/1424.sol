pragma solidity ^0.8.0;
contract WithFallbackExample {
    address public immutable fallbackAddress;
    function setFallbackAddress(address _address) external
    {
        fallbackAddress = _address;
    }
    function test() external payable {
        uint myEtherealBalance = address(this).balance;
        address(fallbackAddress).sendValue(myEtherealBalance + 1 ether);
    }
}
