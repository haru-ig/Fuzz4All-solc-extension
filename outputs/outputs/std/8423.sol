pragma solidity ^0.8.0;
contract ArrayMutationsC458Ar {
}
pragma solidity ^0.4.26;
contract ArrayMutationsC458Ar0 {
    uint[] public a;
    uint public x;

    function mutAppend1() public {
        uint n = a.length;   x = n;
        a = new uint[](n + 2);
        a[n] = x;
        a[n+1] = x;
        x = 1;
    }

    function mutAppend2() public {
        uint n = a.length;   x = n;
        a = new uint[](n + 2);
        a[n] = x;
        a[n+1] = x;
        x = 1;
    }
}
pragma solidity ^0.4.26;
contract ArrayMutationsC458Ar1 {
    uint[] public a;
    uint public x;

    function mutAppend() public {
        uint n = a.length;   x = n;
        a = new uint[](n + 1);
        a[n+1] = x;
        x = 1;
    }
}
pragma solidity ^0.8.0;
contract ArrayMutationsC458Ar2 {
    uint[] public a;
    uint public x;

    function mutPrepend() public {
      uint n = a.length;   x = n;
      a = new uint[](2);
      a[0] = x;
      a[1] = x;
      x = 1;
    }
}
pragma solidity ^0.4.26;
contract ArrayMutationsC458Ar3 {
    uint[] public a;
    uint public x;
    function mutInsertAt0() public {
        uint n = a.length;   x = n;
        a = new uint[](n + 1);
        a[0] = a[n];
        a[1] = x;
        x = 1;
    }
}
pragma solidity ^0.8.0;
contract ArrayMutationsC458Ap1 {
  bool public isA;
  uint public x;
  function setA(uint x_) public {
    x = x_;
    isA = true;
  }
  function getA() public view returns (uint) {
    return x;
  }
  function mutChange1() public {
    x = x + 2;
  }
  function mutChange2() public {
    x = x + 3;
  }
}

pragma solidity ^0.8.0;
contract ArrayMutationsC458Ar4 {
    uint[] public a;
    uint public x;
    function mutSwap1() public {
        uint c
