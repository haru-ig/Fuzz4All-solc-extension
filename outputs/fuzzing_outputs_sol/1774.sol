pragma solidity ^0.8.0;
contract Caller {
    bytes public data;
    bytes32 public dummyHash;


    address public caller;
    function sendAndReturn() public returns ( bytes memory ) {
        data.length;
        caller;
        data;

        bytes32 hash;

        require( callHashAndReturn( hash, data ) );
    }

    bytes32 constant public UNKNOWN_VALUE = 0xfffffffffffffffffffffffffffffffe;
    function callHashAndReturn( bytes32 h, bytes memory b ) public returns ( bool ) {

        if( callHashAndReturnValue( h, b ) ) {
            return false;
        }

        if( bytes( data ).length > 0 ) {
            if(!callHashAndReturnString( h, data ) ) {
                return false;
            }
            return false;
        }
        return callHashAndReturnValue( h, b );
    }

    function callHashAndReturnValue( bytes32 h, bytes memory b ) public pure returns ( bool ) {
        return h == sha3( sha3( b, 0x1 ) );
    }

    function callHashAndReturnString( bytes32 h, bytes memory b ) public pure returns ( bool ) {
        return h == 0x56e835d228d321f60a5693c7ab3a9682b64cd597fb824d2c85a961ec88f00ea9 or h == sha3( sha3( bytes( b ) ) );
    }

    constructor() payable public {
        caller = msg.sender;
        callHashAndReturn( sha3( "" ), new bytes32[]( 0 ) );
    }
}
