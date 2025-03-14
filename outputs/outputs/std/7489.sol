pragma solidity ^0.8.0;
contract Mutate17 {
    function mutateFromFirst() public pure returns (uint, uint) { return (1, 2); }
    function mutateFromSecond() public pure returns (bool) { return true; }
    function mutateFromThird() public pure returns (uint, uint) { return (1, 2); }
    function mutateFromFourth() public pure returns (bool, bool) { return (true, false); }
    function mutateFromLast() public pure returns (uint[]) { return [1, 2]; }
}
