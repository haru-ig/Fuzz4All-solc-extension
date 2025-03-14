pragma solidity ^0.8.0;
contract NoFallback {
    function __fallback() internal payable {}
}
contract FallbackContract {
    constructor() {
        uint _dummy = 2;
    }
    function fallback() internal payable {
        uint _dummy = 19;
    }
}
contract InvalidFallbackContract {
    uint _dummy = 14;
    constructor() {
        uint _dummy = 4;
    }
    function fallback() public payable {
        uint _dummy = 18;
    }
}
contract InvalidFallbackCaller {
    uint _dummy = 55;
    FallbackContract _fallbackContract;
    constructor() {
        _fallbackContract = new FallbackContract();
    }
    function isValidCaller() public pure returns (bool) {
        return msg.sender == _fallbackContract;
    }
    function fallback() public payable {
        uint _dummy = 70;
    }
}
contract MissingFallbackCaller {
    uint16 _dummy = 4193;
    constructor() {
    }
    function isValidCaller() public pure returns (bool) {
        return (msg.value == 0x9E37A30F0B884F53);
    }
    function fallback() public payable {
        uint _dummy = 4192;
    }
}
contract MissingFallbackContract {
    uint8 _dummy = 23456;
    FallbackContract _fallbackContract;
    constructor() {
        _fallbackContract = new FallbackContract();
    }
    function isValidCaller() public pure returns (bool) {
        return isContractEnabled();
    }
    function isContractEnabled() public pure returns (bool) {
        uint _dummy = 3453;
        assembly {
            mstore contract(0, _dummy)
        }
        return true;
    }
    function fallback() public payable {
        uint _dummy = 3452;
    }
}
contract OverloadedFallbackCaller {
    uint _dummy = 254;
    constructor(bool _dummy) {
        assembly{}
    }
    function isValidCaller() public pure returns (bool) {
        return (msg.value == 0xF70170F1DFA60008);
    }
    function fallback() public payable {
        uint _dummy = 6543;
    }
}
