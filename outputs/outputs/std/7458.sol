pragma solidity ^0.8.0;
contract Mutate2 {
    Mutate3 immutable a = new Mutate3();
    function mutateFromFirst() public { a.mutateFromFirst(); }
    function mutateFromSecond() public { a.mutateFromSecond(); }
    function mutateFromLast() public { a.mutateFromLast(); }
    function mutateFromOneElement() public { a.mutateFromOneElement(); }
}
