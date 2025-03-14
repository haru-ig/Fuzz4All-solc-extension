pragma solidity ^0.8.0;
contract Mutant {
    constructor(uint i) public {
        while(true) {
            uint new = i - 3;
            if (new < 1) {
                assert(new > 3);
                assert(new == 1);
            }
            i = new;
            setID();
        }
    }
    function setID() public { }
    function getID() public view returns (uint) { return 1; }
}

contract Mutant2 {
    constructor(uint i, uint j, uint k) public { }
   function setID() public { }
    function getID() public view returns (uint) { return 1; }
}

contract Mutant3 {
    constructor(uint i) public { }
   function setID() public { }
    function getID() public view returns (uint) { return 1; }
}

contract MultiMutant {
    uint32 public i;
    uint32 public j;
    uint32 public k;
    uint32 public p;

    function setID() public {
        p = i;
        i = p;
    }
    function getID() public view returns (uint) {
        return 1;
    }
}

contract Main {
  address payable a;
  uint256 public id;
  uint256 public x;
  modifier mutant() {
      setID();
      assert(a.balance == 100);
      assert(id == 2);
      assert(x == 0 || x == 0xffffb22867969000);
      _;
  }
  constructor() public {
      a = payable(this);
      x = 0xffffb22867969000;
      id = 1;
  }
    function f() mutant public { }
    function g() mutant public { }
    function h() public mutant { }
    function f2() public mutant { }
    function mutantf() {

        f(uint256);
        f(bytes1());
        f(bytes1[] memory);
        f(bytes32[] memory);
        f(address payable[]);
    }
    function mutantg() {

        g(uint256);
        g(bytes1());
        g(bytes1[] memory);
        g(bytes32[] memory);
        g(address payable[]);
    }
    function mutanth() public mutant {

        h(uint256);
        h(bytes1());
        h
