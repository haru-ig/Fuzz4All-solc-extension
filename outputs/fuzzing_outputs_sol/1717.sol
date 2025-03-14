pragma solidity ^0.8.0;
interface IFunctionWithFallback {
    function callWithFallback ( bytes calldata ) external;
}
contract Caller {

    uint256 internal _storage;
    constructor () {

        new IFunctionWithFallback { value: msg.value }();
    }
    function _withdrawEther () internal {
        address payable _this = address(this);
        _storage = IFunctionWithFallback( _this ).callWithFallback ( abi.encode( msg.value) );
    }
    function _withEther ( uint256 _value ) internal {
        _withdrawEther();
        msg.sender.transfer( _value );
    }
}
