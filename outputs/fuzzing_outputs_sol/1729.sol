pragma solidity ^0.8.0;
contract Mutator {
    bytes32 private myValue;

    function myFunction() public returns (bytes32) payable {
        address payable self = payable ( address(this) );
        self.sendValueToSelf() ;
        return myValue;
    }

    function payable sendValueToSelf() public {
        self.transfer( msg.value );
    }

}
