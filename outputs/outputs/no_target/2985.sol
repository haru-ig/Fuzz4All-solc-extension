pragma solidity ^0.8.0;
contract fourth{
  third3 public tt;
  address public owner;
  bool public active = true;
  bytes1 public f;
  constructor() {
      owner = msg.sender;
  }
  function set1(address x);
  function set2(address y);
  function set3(address z);
  function set4(address  w);
  function set5(address z, uint x);
  function set6(address z, address x, uint x1);
    function set7(address z, bool x);
  function set8(address z1, address z2, address z3);
  function set9(address z, uint y);
  function set10(address z);
  function set11(address z, address w);
  function set12(address z1, address z2, address z3);
  function set13() external;
  function set14();
  function set56(address x, uint y);
  function set33(address x, address y);
  function set99(address x, address y, address z, uint xi, bytes1 x1, bytes y1, bytes z1, bytes1 x2, bytes y2, bytes z2, bytes1 z3, bytes1 x3, bytes y3, bytes z3);
  function log() public view returns(uint) {
    tt.f();
    return tt.b.length;
  }
    function log1() public pure returns (uint) {
        uint[] memory a = new uint[](3);
        a[0] = 10;
        a[1] = 20;
        a[2] = 30;
        return a.length;
    }
    function log2() public pure returns (uint, address) {
        uint[] memory a = new uint[](3);
        a[0] = 10;
        a[1] = 20;
        a[2] = 30;
        address b = address(0);
        return (a.length, b);
    }
  function log3() public pure returns (bytes1) {
        bytes1[] memory a = new bytes1[](3);
        a[0] = 10;
        a[1] = 20;
        a[2] = 30;
        bytes1 b = bytes1(0);
        return (a.length, b);
    }
   bool public z;
    uint private z1 = 17;
    string private s = "hello";
    function getstring() public pure returns (string memory) {
        string memory b = "hello";
        return(b);
    }
    function getstring1() public pure returns (bytes memory) {
        bytes memory b = "hello1";
        return(b);
    }
    function set45() internal view {
        tt.log1();
    }
    function set32(string memory _s)
