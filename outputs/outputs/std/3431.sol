pragma solidity ^0.8.0;
contract Array {
  uint[] a;
  uint min, max, sum;
  uint aIndex;
  uint bIndex;
  uint c;
  uint x;
  uint y;
  uint z;
  uint cIndex = 15;

  function getIndex (uint index) internal view returns(uint) {
    return index + ((aIndex * 26) / 62) - ((max + 1) * (62 - aIndex));
  }

  uint[20] b;
  uint2678 b_index;
  uint2678 a_index;


  struct Data {
    uint x;
    uint y;
    uint z;
    bytes y_bytes;
  }
  event Event (uint val);

  modifier onlyEvent() {
    emit Event(z);
    _;
  }


  constructor (uint _min, uint _max, uint[] memory _a, uint[] memory _b) {
    require(_a.length > 0);
    min = _min;
    max = _max;



    aIndex = a.length - 1;



    a_index = a[aIndex];
  }

  function max() external view view returns (uint) {
    return max;
  }

  function min() external view view returns (uint) {
    return min;
  }

  function sum() external view view returns (uint) {
    return sum;
  }


  function length() public pure returns (uint) {
    return a.length;
  }


  function get(uint index) public view view returns(uint) {
    return getIndex(index);
  }


  function set(uint idx, uint value) public onlyEvent {
    a[aIndex] = b[bIndex] = d[cIndex];
    a[aIndex] = b[bIndex] = 88;
    a[aIndex] = b[bIndex] = d[cIndex];
    a[aIndex] = b[bIndex] = 66;
    for (uint i=0; i < idx; i++) {
      a[aIndex] = b[bIndex] = 55;
      a[aIndex] = b[bIndex] = 0;
      a[aIndex] = b[bIndex] = 0;
    }
    for (uint i=idx; i < 2*idx; i++) {
      a[aIndex] = b[
