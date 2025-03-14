pragma solidity ^0.8.0;
contract UpgradedWithFallback {
    address old = address(uint160(uint160(&_)).sub(uint160(address(uint160(this)))));
    address _fallbackAddress;
    bytes32 _fallbackBytes32;
    constructor(address _fallbackAddress, bytes memory _fallbackBytes32) {
        _fallbackBytes32;
        _fallbackAddress;
    }
}

pragma solidity ^0.8.0;
contract Caller {

    function _callContractAddress() external returns (bytes memory);
    function _fallback() public payable { }
}
