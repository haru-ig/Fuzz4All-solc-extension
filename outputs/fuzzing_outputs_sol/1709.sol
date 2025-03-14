pragma solidity ^0.8.0;
contract FallbackWithPureCallback {
    function callback ( bool _success, uint _value ) public pure returns (bytes memory) {
        return abi.encode( _success, _value );
    }

}
