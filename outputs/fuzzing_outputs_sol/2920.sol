pragma solidity ^0.8.0;
contract Caller {
    function callContract () public {
        Frobber frob = new Frobber();
        frob.frob(msg.sender, 34);
    }
}
