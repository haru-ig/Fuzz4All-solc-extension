pragma solidity ^0.8.0;
contract C {


  uint public y;
  uint public z;
  constructor(uint _a, uint _b) public {
    z=uint(_b);
    a=uint(_a);
    y=a+z;
  }
  function setABC(uint ac, uint bc) public {

    b=uint(bc);
    y=a+b;
  }
}

```

```


pragma solidity ^0.8.0;
contract ABCD {
  uint public a;
  uint public b;
  uint public c;

  constructor(uint _a, uint _b, uint _c) public {
    a = uint(_a);
    b = uint(_b);
    c = uint(_c);
  }

  function getResult() public pure returns (uint r){
    r = a+b+c;
  }
}
pragma solidity ^0.8.0;
contract ABCD {

    uint constant x = 10;
    uint constant y = x + 10;
    uint constant z;
    uint constant f(uint _x){
      return _x + x;
    }

    function doIt(uint _y) public pure returns (uint r){
      r = _y;
      uint _y1 = _y + _y + _y + _y + y + z;
      r = _y1;
      r -= _y;
    }

    function getResults(uint _x) public pure returns (uint r){
      r = x;
      uint _y = doIt(_x*_x*_x*_x*_y);
      r = _y;
    }

  function getResults2(uint _x) public pure returns (uint r){
    r = x;
    uint _y = (doIt(_x*_x*_x)*doIt(_x*_x)*doIt(_x)*doIt(_x) + doIt(_x)*doIt(_y));
    uint _z1 = (f(_x) + f(_x+
