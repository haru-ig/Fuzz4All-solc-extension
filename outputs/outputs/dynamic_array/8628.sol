pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity76_dynamicCalldataArraysMutator {
    uint[] a;
    uint[] a2;
    function callTest01() public view returns (uint[] memory) { return a; }
    function callTest02() public view returns (address[] memory) { return a; }
    function callTest03() public view returns (bytes memory) { return a; }
    function callTest04() public view returns (int[] memory) { return a; }
    function mutatorTest01() public returns (uint[] memory) { a2=a; }
    function mutatorTest02() public returns (address[] memory) { a2=a; }
    function mutatorTest03() public returns (bytes memory) { a2=a; }
    function mutatorTest04() public returns (int[] memory) { a2=a; }
}
