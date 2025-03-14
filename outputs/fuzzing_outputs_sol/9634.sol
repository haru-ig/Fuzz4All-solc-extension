pragma solidity ^0.8.0;
contract Fallback{
    modifier test0() {
        revert();
        _;
    }
   function test1() public payable test0{
        revert(); }
    function test2() public pure { revert(); }
    function test3() public pure payable { revert(); }
    function test4() public { }
}
