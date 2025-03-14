pragma solidity ^0.8.0;
contract Array {
    uint private arrayOfUints_current;

    uint private _maxUint;
    uint private _maxAddress;

    uint private _maxBytes;
    uint private internal arrayOfAddresses_current;
    mapping (uint => mapping (uint => uint)) private mappingOfArrayToSixElements;
    mapping (uint => string) private mappingOfArrayToStrings;
    mapping (uint => int256) private mappingOfArrayToInt256s;
    function setMax(uint _maxUint, uint _maxAddress, uint _maxBytes) internal {
        this._maxUint = _maxUint;
        this._maxAddress = _maxAddress;
        this._maxBytes = _maxBytes;
    }

    function increaseMaxBytes() internal {
        if (this._maxBytes >= 65000) {
            this._maxBytes -= 65000;
        } else {
            this._maxBytes += 65000;
        }
    }

    function increaseMaxUint() internal {
        this._maxUint = this._maxUint + 1;
    }

    function increaseMaxAddress() internal {
        this._maxAddress = this._maxAddress + 1;
    }

    function Array(uint _maxAddress) {
        this._maxAddress = _maxAddress + 1;
    }

}
