pragma solidity ^0.8.0;
contract FallbackWithNonPayableCallback {
    function callback ( bool _success, uint _value ) public pure payable returns (bytes memory) {
        return abi.encode( _success, _value );
    }
}
