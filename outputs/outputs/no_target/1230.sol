pragma solidity ^0.8.0;
contract Injection_02
{

    uint256 w1;

    function  set(
        uint w1,
        uint w2,
        uint w3
    )
        public
returns( uint ) {
        this.w1 = w1;

if( true )
w2 = w1;
        this.w3 = w1 + w2 - w3;
        return 0x00000000000000000000000000000000000000000000000000000000000000;
    }

}
