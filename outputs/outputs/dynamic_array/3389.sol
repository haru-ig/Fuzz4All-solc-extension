pragma solidity ^0.8.0;
interface ISimpleI3aEvents {
    event e(uint);
    event ee(uint);
}
contract B3aEvents {
  function on(uint) public {
    emit e(4);
  }
  function off(uint) public {
    emit ee(4);
  }
}
contract D3aEvents {
    uint public i1;
    mapping (uint => uint) public i5;
    uint i9;
  function off(uint) public {
    emit ee(i5[i9]);
  }
}
contract C3aEvents {
    function on(uint) public {
      require(i1 == 4);
      emit e(i9);
    }
    uint public i3;
    uint public i2;
    uint public i1;
  function off(uint) public {
    emit ee(i5[i9]);
  }
}
contract B {
    function f() public pure {
        uint[] memory a1 = new uint[](3);
        uint[] memory a2 = a1.subarray(0, 2);
        uint[] memory a3 = a1.subarray(3);
        address[] memory a4 = new address[](2);
        bool[] memory a6 = new bool[](true);
        bytes[] memory a7 = new bytes[](8);
        uint16[] memory a8 = new uint16[](3);
        uint16[] memory a9 = a8.subarray(0, 0);
        uint16[] memory a10 = a1.u1s2();
        uint16[] memory a14 = a10.u1s1();
        uint16[][] memory a11 = a10.u2p1();
        uint16[][] memory a12 = a11.subarray(0, 1);
        uint16[][] memory a13 = a11.subarray(2, 3);
    }
}
contract D {
    function f() public pure {}
}
contract D1aEvents {
    mapping (uint => uint) public e1;
    mapping (uint => uint) public e2;
    mapping (uint => uint) public e3;
    mapping (uint => uint) public e4;
    mapping (uint => uint) public e5;
    uint id;
}
contract C {
    function f() public pure {
        bool[][] memory a1 = new bool[2][];
        bool[][] memory a2;
        uint[][] memory a8 = new uint[10][];
        uint[][] memory a9;
        bool[][][][] memory a10;
        bool[][][][] memory a3a7 = new bool [5][][];
        uint16[][] memory a3a9 = new uint1
