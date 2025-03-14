pragma solidity ^0.8.0;
contract DynamicArraysInSolidity {
    uint[] x;
        constructor () public {
        x = new uint[](3);
        x[0] = 0;
        x[0] = 1;
        x[0] = 2;
        x[0] = 3;
        x[1] = 4;
        x[1] = 5;
        x[1] = 6;
    }
        function m1(uint[] memory) public returns (uint[] memory) {
        return x;
    }
        function m2() public view returns (uint[] memory) {
        return x;
    }
}

pragma solidity ^0.8.0;
contract SymbolicEquality_AccessNestedArary {
  	uint[] x;
      uint[][1024] memory y;
      uint[] memory y1 ;
      uint[] memory y2;
      uint[][] memory m;
      uint[][] memory m1;
      uint[][] memory m2;
      uint[] m3;
      uint f;
      constructor () public {
        x = new uint[](21);
        x[1] = 1;
        x[2] = 5;
        x[3] = 9;
        x[1] = 1;
        x
