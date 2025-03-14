pragma solidity ^0.8.0;
contract MyContract {
    bool public b2;
    event ChangeToTrue(uint x);



    function foo() public {
        b2 = true;
        emit ChangeToTrue(2);
    }
}
