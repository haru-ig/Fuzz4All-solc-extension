pragma solidity ^0.8.0;
contract SemanticsEquivalence0 {
    function run() public { }
    receive() external payable { }
}
contract SemanticsEquivalence5 {
    function run() public { }
    receive() payable external { }
}
contract SemanticsEquivalence8 {
    function run() public { }
    receive() external payable external { }
}
