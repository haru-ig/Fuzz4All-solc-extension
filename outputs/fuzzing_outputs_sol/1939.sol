pragma solidity ^0.8.0;
contract Fallback {
    uint256 private _fallbackValue;

    receive () {
        _fallbackValue += 1;
    }

    function getFallbackValue() public view returns (uint256) {
        return _fallbackValue;
    }
}
