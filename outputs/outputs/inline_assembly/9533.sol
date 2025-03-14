pragma solidity ^0.8.0;
contract MyContract {
    bool public b2;
    event ChangeToTrue(uint x);
    function bar() public {
        b2 = true;
        for(uint i = 10; i > 0; i--) {
            i--;
        }
    }
}
