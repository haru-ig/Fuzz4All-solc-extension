pragma solidity ^0.8.0;
contract NotMutators24SemanticallyEquivalentMutated2 {
    address[] public a;
    address public b;
    address[] public z;
    mapping (address => uint) public c;
    mapping (address => bool) public d;
    mapping(address => mapping(uint => bool)) public ee;
    constructor(address A) public {
        init2();
    }
    function increment(uint k) public returns (uint) {
      d[A()][k] =!d[A()][k];
      return uint(0);
    }
    function update() public {
        c = 0;
        d = 0;
        b = B() + 4;
    }
    function B() public view returns (address) {
      d[msg.sender][0] = false;
      address A() = C() + 3;
      z[1] = A();
      return A();
    }
    function A() public view returns (uint) {
      uint x = 1;
      while(x > 0){
        x = C();
      }
      return x;
    }
    function init2() public {
        a = new address[](2);
        a[0] = 10;
        a[1] = 20;
        b = 30;
        c = 0;
        d = 0;
        b = B() + 4;
        c = (A()<16777210)? 1 : 2;
    }
    function C() public view returns (uint) {
      if(a[1]<3 && a[1]<a[0]) return 1;
      return b;
    }
    function B() public view returns (address) {
        return 0;
    }
}
contract SemanticallyEquivalentMutated2 {
    uint public a;
    uint public b;
    uint public c;
    event Incr(uint k);
    constructor(uint Z) public {
        b = Z * 3;
        a = b;
    }
    function increment() public {

        increment2(b);

        a = a + c;
    }
    function increment2(uint k) public {
      a = a;
      c += k;
    }
    function update() public returns (uint) {
      /*
