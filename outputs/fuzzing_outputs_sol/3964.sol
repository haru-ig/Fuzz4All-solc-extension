pragma solidity ^0.8.0;
interface Caller20 {
    function payWithFallback(uint256 _amount, uint256 _extraValue);
}

pragma solidity 0.8.4;
contract ExampleContract {

    uint256 public i_fallbackCalledCount = 0;
    uint256 public _i_fallbackCalledThis;

    function fallbackPayable() view public payable external returns(uint256 _amount) {
        i_fallbackCalledCount += 1;
        _i_fallbackCalledThis = i_fallbackCalledCount;
        uint256 _value = _i_fallbackCalledThis * _i_fallbackCalledThis;
        return _value;
    }
}
