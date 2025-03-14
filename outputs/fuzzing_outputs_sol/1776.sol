pragma solidity ^0.8.0;
interface EtherReceiver { fallback ( bytes memory data ); }
contract EtherReceiver {
    function onERC721Received( address operator, uint256 owner, uint256 tokenId, bytes memory data ) public;
}

pragma solidity ^0.8.0;
contract CallerWithFallback {
    address payable fallbackAddress;
    bytes public data;
    receive () public payable {
        fallbackAddress.transfer( amount(4) );
        require(address( this ).balance > 10, "CallerAddressTooBig" );
        fallbackAddress.return( bytes( "0x00" ) );
    }
    function returnWithAddress( address addr ) public returns (bytes memory ) {
        addr.send( amount(3) );
        require(address( this ).balance > 10, "CallerAddressTooBig" );
        addr.transfer( amount(4) );
        require(address( addr ).balance >= 6, "CallerAddressTooBig" );
        addr;
    }
    function returnWithAddressAndData( address addr, bytes memory data ) public returns (bytes memory ) {
        addr.send( amount(2) );
        require(address( this ).balance > 9, "CallerAddressTooBig" );
        addr.transfer( amount(3) );
        require(address( addr ).balance >= 8, "CallerAddressTooBig" );
        addr.call.data( data )( bytes( "0x00" ) );
    }
    function setFallbackAddress( address payable fallbackAddr ) public onlyOwner {
        fallbackAddress = fallbackAddr;
    }
    function amount( uint i ) pure internal returns(uint) {
        assert(i <= 9);
        return i;
        }
}
