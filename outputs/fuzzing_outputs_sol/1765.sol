pragma solidity ^0.8.0;
library TestFallback {

    constructor () {

    }

    event Ether(uint256 indexed _value, bytes _data);

    event EtherFallback( uint256 indexed _value, bytes _data, bytes _fallbackFallbackData );

    event EtherFallbackFailed( uint256 indexed _value, bytes _data, bytes _fallbackFallbackData);

    event EtherFallbackReturnValue( uint256 indexed _value, bytes _data, bytes _fallbackFallbackData);

    event EtherFallbackRevertFail( uint256 indexed _value, bytes _data, bytes _fallbackFallbackData);
    /**
    * @dev Emitted when contract calls this fallback function, receives Ether and fallback data is zero, so contract must revert the call with given Ether.
    * @param _value Value
