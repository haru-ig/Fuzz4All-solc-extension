pragma solidity ^0.8.0;
library MyLib {
    function isTrue(bool _bool) pure public returns(uint64) { return 1; }
}

library Test {


    function test( ) public returns(uint256) {
      uint256[] memory x;

      uint[] memory a = [6,7];
      a.push(5); x = a;

      x.push(8);

      uint[4] memory x1 = [8,7,6,5];
      x1.push(4);
      for (uint256 i = 0; i < x1.length; i ++) {
          uint256 j = i + x1.length;
          x[i] = x1[i];
          x[j] = x1[j];
      }
      return 1;
    }


    struct Stuct {
        uint[] calldata a;
        uint[5] calldata f5;
        uint256[2] calldata f;
        mapping (uint => uint256) calldata m;
        event Evt;
        constructor( uint f ) public {
            a.push(1); f5.push(2); f.push(3); m[4] = 4;
            emit Evt;
        }
    }



    function testCalldata(uint64 _int16, bool _bool, string memory _str, bytes memory _bytes) public returns(uint256) {
      Stuct memory s = Stuct(_int16, _bool, _str, _bool? (uint256[])(abi.encode(false)): _int16? (uint256[])(abi.encode(false)): _str);


      uint256[] memory x;

      uint[] memory a = [6,7];
      a.push(5); x = a;

      x.push(8);

      uint[4] memory x1 = [8,7,6,5];
      x1.push(4
