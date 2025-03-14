pragma solidity ^0.8.0;
contract AddressStorage {
    fallbackAddress public fallbackAddress;

    function setFallbackAddress(address _fallbackAddress) public {
        require(address(this).balance >= _fallbackAddress.balance);
        fallbackAddress = _fallbackAddress;
    }

    function address(uint index) public pure returns (address) {
        bool result = fallbackAddress.slot(index);
        require(result);
        return fallbackAddress.slots(index);
    }
}
