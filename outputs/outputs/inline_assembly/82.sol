pragma solidity ^0.8.0;
contract A {
  uint8 private _number;
  constructor() {
    _number = 0x2;
  }
  function _incrementNumberA() public {
    emit NewNumber(_number);
    _number += 1;
  }
  event NewNumber(uint8 i);
}
contract C {
  uint8 public _number;
  constructor() {
    _number = 0x2;
  }
  function _incrementNumberB() public {
    emit NewNumber(_number);
    _number += 1;
  }
  event NewNumber(uint8 i);
}
contract D {
  uint8 public _number;
  constructor() {
    _number = 0x2;
  }
  function _incrementNumberC() public {
    emit NewNumber(_number);
    _number += 1;
  }
  event NewNumber(uint8 i);
}
contract E {
  A a;
  B b;
  C c;
  D d;
  constructor() {
    a = new A();
    b = new B();
    c = new C();
    d = new D();
  }
  function _incrementNumberAB() public {
    a.a._incrementNumberA();
    b.b._incrementNumberB();
  }
  function _incrementNumberBC() public {
    b.b._incrementNumberB();
    c.c._incrementNumberC();
  }
  function _incrementNumberDC() public {
    c.c._incrementNumberC();
    d.d._incrementNumberC();
  }
  function _incrementNumberABC() public {
    a.a._incrementNumberA();
    b.b._incrementNumberB();
    c.c._incrementNumberC();
  }
}
contract F {
  E e;
  function _incrementNumberEAB() public {
    for (uint256 i = 0; i < 100000; i++) {
      e._incrementNumberABC();
    }
  }
}
