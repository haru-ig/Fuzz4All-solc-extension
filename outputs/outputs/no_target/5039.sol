pragma solidity ^0.8.0;
contract B38_bug426328679557 {
   string a;
   function set(string memory s) public { a = s; }
   function check () public view returns (bool r) { return a==""; }
}
