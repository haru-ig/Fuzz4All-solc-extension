pragma solidity ^0.8.0;
contract Arrays5 {
    uint[] private b10;
    uint[] public b20;
}
contract Arrays6 {
    uint8[] private c10;
    uint8[] public c20;
    function f1(uint8[] calldata array1) public {
        a1 = array1;
    }
    function f2(uint256[] memory array2) public {
        a2 = array2;
    }
}
contract Arrays8 {
    uint16[] private d10;
    uint16[] public d20;
    function f1(uint8[] calldata array1) public {
        b10 = array1;
    }
    function f2(uint256[] memory array2) public {
        b20 = array2;
    }
}



contract Arrays10 {
    uint256[] private e10;
    uint256[] public e20;
    constructor() public {
      a1 = new uint[](0); a2 = new uint[](0);
      a1.push(uint(1)); a1.push(uint(2)); a1.push(uint(3));
      a2.push(uint(0)); a2.push(uint(4)); a2.push(uint(5));
      b10 = a1; uint[] memory b20 = a2;
      assert(a1 == a2);
      assert(b10[0] == uint(1) && b10[1] == uint(2) && b10[2] == uint(3));
      assert(b20[3] == uint(0) && b20[4] == uint(4) && b20[5] == uint(5));
    }


    function f1(uint[] memory array1, uint[] calldata array2) public {
      if ((array1.length == 0) || (array2.length == 0)){
        a1 = new uint[](0);
        a2 = new uint[](0);
      }
      else {
        a1 = new uint[](array1.length + array2.length);
        a1.push(uint(0));
        a1.append(array1);
        a
