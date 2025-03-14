pragma solidity ^0.8.0;
contract Tester {
    function mutatorTest( address s, bytes32 f, bytes memory p, bytes memory b ) public {
        s.transferFrom( msg.sender, address ( this ), 0 );
    }
}
