pragma solidity ^0.8.0;
contract ErrorThrowingWithFallback {

    uint256 private constant _startAt = 3;
    uint256 private _i;

    constructor(uint256 _i) {
        _i = _startAt;
    }
    fallback () external {
        _i = _startAt;
    }
    receive() external {
        _i = _i + 1;
    }
    function getValue() public view returns(uint256){
        if(_i!= _startAt){
            return 0;
        } else {
            return _i;
        }
    }
    function getFallback() public view returns(uint256){
        return _startAt;
    }
}
