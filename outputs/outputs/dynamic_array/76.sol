pragma solidity ^0.8.0;
contract B {
    mapping (uint256 => uint256) public array;
    function modify() public { array[uint0(1)] = 1; }
    function testRead() public constant { array.testRead(); }
    function testModify() public payable { modify(); }
}
