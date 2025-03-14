pragma solidity ^0.8.0;
contract third4 {
  address public owner;
  function third1() public payable { a = 1; }
  function third2() public { a = 2; }
  function third3() public nonpayable { a = 3; }
  function third4() public nonpayable { 3; a = 4; }
  receive () public payable { a = 0xaa00000000000001; }
}
contract third3 is third4 {
    address public owner;
    function third5() public payable { a = 120; }
    receive () public payable { 2; a += 2; }
}
