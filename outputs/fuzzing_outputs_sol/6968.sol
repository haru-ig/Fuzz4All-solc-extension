pragma solidity ^0.8.0;
contract Mutator2 is Mutator {
    function mutate() public {
        Mutator.mutate();
        emit Moved(0xffff, 0x123);
    }
    event Moved (uint _from, uint _to);
}
