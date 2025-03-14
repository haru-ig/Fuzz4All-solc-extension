pragma solidity ^0.8.0;
contract Caller {
    function _fallback() public payable {
        uint256 someVariable = 1;
        bytes32 secretText = "This is some secret text.";
        address addr = 0x60a028E73a31819a969ce50efefbd93407558C02;
        uint256 value = 1 ether;
        bool result = true;
        addr.call{value: value}(abi.encodeWithSignature("doSomething()"));
        result.transfer(someVariable);
    }
    function doSomething() public {
        uint constant uint256_0 = 0;
        address addr = 0x60a028E73a31819a969ce50efefbd93407558C02;
        bool result = true;
        uint256_0.transfer(uint256_0);
        result.transfer(uint256_0);
        uint256_0.transfer(uint256_0);
        result.transfer(uint256_0);
        addr.sendValue(uint256_0);
        result.transfer(uint256_0);
    }
}
