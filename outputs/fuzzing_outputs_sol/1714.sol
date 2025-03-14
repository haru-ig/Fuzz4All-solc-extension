pragma solidity ^0.8.0;
contract FallbackWithReceivingFallback {
    uint256 internal constant value = 17;
    require( false );
    function fail() public {
        fail;
    }
    function fallback() public payable {
        fallback( value );
    }
    function fallback( uint256 _value ) public payable {
        emit FallbackReceivingFallback( msg.sender, _value );
    }
    receive() public {
        revert();
    }
}
