pragma solidity ^0.8.0;
contract Array {

  function mySet(uint[] memory a, uint aIndex, uint value) public;
}
pragma solidity ^0.8.0;
contract Convert {
  function myUint8ToUint256(uint x) public pure returns(uint256 y){
    return uint256(uint8(x));
  }
}
pragma solidity ^0.8.0;
contract Math {

  function myMod(uint256 a, uint256 b) public pure returns(uint256 c){
    if (b > 0) return a % b;
    else return (a + (10**25) % b);
  }
  function mySqrt(uint256 x) public pure returns(uint256 y){
    if (x >= 2) return mySqrt(x/2);
    else return 1;
  }
}

pragma solidity ^0.8.0;
contract Memory {
  function myGetUint256ArrayAddr(uint[] memory array, uint i) public pure returns(uint256){
    return uint256(uint8(array[i]));
  }
}
pragma solidity ^0.8.0;
contract Multiprecision {

  function myInt(uint x) public pure returns(uint256 y){
    uint256 r = uint256(uint64(x));
    if (x<r) {
      y = (10**25).mul(2u**(r-x-1));
    }
    else{
      y = (10**25).mul(2u**r);
    }
  }
}
pragma solidity ^0.8.0;
contract Random {
  uint8 internal _rand_x;


  function myModWithRand(uint256 x) public view returns(uint8 out){
    uint8 _rand_y = uint8((uint64(x)<<12) ^ (uint64(uint8(_rand_x))<<24) ^ (uint64(uint8(blockhash(block.number - _rand_x))).add(uint8(_rand_x))));
    return out = _rand_y % 19 + 4;
  }
  function get_x() public view returns(uint8){
    return _rand_x;
  }
  function set_x(uint8 _rand_x) public {
    this._rand_x = _rand_x;
  }
}
