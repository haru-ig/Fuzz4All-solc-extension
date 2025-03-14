pragma solidity ^0.8.0;
contract AddressZero {
    address payable A;
    function f(bytes memory) public payable A {  }
}
contract Fail {
    Contract c;
    c();
    function f() public payable {
        c.emitFailure();
    }
    receive() external{  }
}
