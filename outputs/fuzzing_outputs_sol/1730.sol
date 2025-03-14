pragma solidity ^0.8.0;
contract Clobber {
    function f ( bytes memory ) public returns (bytes memory){
        return memory.mem[ 0 ];
    }
}
contract Tester {
    function test ( Clobber clb ) public {
        address a = type( clb ).func;
        a.transfer( address( this ).balance );

        clb.f ( "Hello World!".toBytes() );
    }
}
