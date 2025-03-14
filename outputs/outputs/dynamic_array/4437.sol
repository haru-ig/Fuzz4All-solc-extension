pragma solidity ^0.8.0;
contract Mutated {
    uint[2] public iarr;
    bytes32[] public dynamicarr;
    function modifyarr() public returns(bool){
      int idx = iarr.length;
      dynamicarr.push(0);
      for(uint j=iarr.length;j<7;j++) {
        iarr.push(j);
      }
      iarr[idx]=42;
    }
    function test() public returns(uint) {
      return iarr.length;
    }
    function test6() public returns(uint, uint[3] memory) {
        return (iarr.length, addrs(iarr));
    }
    function test8(uint i) public returns(uint) {
        return i;
    }
    function test9() public returns(uint, uint[], bool) {
        return (iarr.length, iarr, bool(iarr.length));
    }

    uint public i = 0;
    uint public j = 0;


    function f() public returns (bool){
        (j, i) = (2, 0);
        return true;
    }

    function g() public  {
        f();
        (i, i) = ((i + 2), i);
    }

    function f_2() public returns (uint) {
        return 0;
    }

    function f_3() public returns (uint) {
        i = 42;
        (i) = 0;
        return 0;
    }

    function f_4() public returns (uint, bool) {
        (i) = 0;
        return i;
    }

    function f_5() public returns (uint, bool, uint) {
        (i) = 0;
        return (i, i);
    }

    function f_6() public returns (uint, bool, bool) {
        (i) = 0;
        i = (i + 4);
        i++;
        return (i, bool(i>0), bool(i<7));
    }
    function f_8() public returns (uint, uint[] memory) {
        return (i, iarr);
    }

    function f_10() public returns (uint, uint[] memory, uint) {
        return (i, iarr);
    }

    function f_11() public returns (uint, uint[], uint) {
        (i) = 0;
        return iarr;
    }

    function f_12(int j_) public returns (uint, uint[], bool) {
        (i) = 0;
        return (i, iarr, bool(iarr.length));
    }


}
