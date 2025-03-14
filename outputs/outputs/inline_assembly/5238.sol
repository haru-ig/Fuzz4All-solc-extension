pragma solidity ^0.8.0;
contract P1 is P2 {
    P1() public { }

    function setIV(uint32 i) public {
      iv = i + 1;
    }

    function increaseIt(uint32 _iv) public {
      iv += _iv;
    }
}
contract P3 is P1 {

    function P3(uint32 _iv) public: P1(_iv) {}


    function increaseIt2(uint32 _iv) public {
        iv += _iv;
    }

    function setIV2(uint32 i) public {
        setIV(_iv + i );
    }
}
contract P4 {


    contract P5 is P2 {
      constructor(uint32 _iv) P2(_iv) public {}
    }
}
contract P6 is P5 {


    function setIV(uint32 i) public {
        iv = i + 1;
    }

    function increaseIt(uint32 _iv) public {
      iv += _iv;
    }
}


pragma solidity ^0.8.0;
contract P6 {

  constructor (uint32 _iv) public {
    iv = _iv;
  }
  function setIV(uint32 i) public {
      iv = i + 1;
  }
}
contract P44 {

    function P44 (uint32 _iv) public {
        v = _iv;
      }
    function increaseIt2(uint32 _iv) public {
        v += _iv;
    }
    function setIV2(uint32 i) public {
        v = _iv + i;
    }
}
contract P2 {
    uint32 public iv;

    constructor(uint32 _iv) public {
      iv = _iv;
    }
}
contract P5 is P2 {

    P2() public {
      iv++;
    }
    function setIV(uint32 i) public {
      iv = i + 1;
    }
}
contract P6 {

  constructor (uint32 _iv) public {
    iv = _iv;
  }
  function setIV(uint32 i) public {
      iv = i + 1;
  }
}
contract P44 {

    function P44 (uint
