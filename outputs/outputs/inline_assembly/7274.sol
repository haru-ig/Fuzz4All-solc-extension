pragma solidity ^0.8.0;
contract InlineAssembly {
    uint public myConst = 9;
    uint public i = 2;
    bool setMyConst = false;

    assembly {
      let old := myConst
      setMyConst := true
      mstore(0x50, mload(0x50))
      setMyConst := false
      mstore(0x50, mload(0x50))

      i := mload(add(myconst, 0x33))
      i := i + 7
      mstore(0x50, i)
    }

    function returnMyConst() view returns(uint) {
      uint temp;
      assembly {
        temp := mload(0x50)
      }
      return temp;
    }
}

pragma solidity 0.8.0;

contract InlineAsmTester {
    uint internal constant MINT_AMOUNT = 20;



    modifier noInfinite(uint data) {
      uint count = data;
      while (count == data);
      _;
    }


    @noInfinite(2)
    function returnFirst(uint a, uint b) public returns (uint) {
        return a + b;
    }




    function returnSecond(uint a, uint b) public returns (bool) {
        return a == b + 2;
    }



    function returnThird(uint a) public returns (bool) {
        return true;
    }


    function constantMethod() public returns(uint) {
        return myConst;
    }




    function constantElseMethod() public view constant returns(uint) {
        return
