pragma solidity ^0.8.0;
contract NewClobber is Clobber, Caller {
    function g() public payable {
        this.f ( abi.encodePacked ( "hello", "world" ) );
    }
}
