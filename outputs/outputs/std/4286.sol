pragma solidity ^0.8.0;
contract Memory {
   uint public uint_data;
   bytes memory public byte_data;
   address public address_data;
}
contract Array {
  function set(uint[] storage a, uint i0, uint i1, uint i2, uint i3) public  {a[i0] = i1; a[i1] = i2; a[i2] = i3;}
  function get(uint[] memory a, uint i0) public view returns (uint {return a[i0];})
  function get2(uint[] memory a, uint i0) public view returns (uint,uint){(uint a0, uint b0) = (a[i0], a[i0+1]);return (a0,b0);}
  function get3(uint[] memory a, uint i0) public view returns (uint,uint,uint){(uint a0, uint b0, uint c0) = (a[i0], a[i0+1], a[i0+2]);return (a0,b0,c0);}
  function get4(uint[] memory a, uint i0) public view returns (uint,uint,uint,uint){(uint a0, uint b0, uint c0, uint d0) = (a[i0], a[i0+1], a[i0+2], a[i0+3]);return (a0,b0,c0,d0);}
  function get5(uint[] memory a, uint i0) public view returns (uint,uint,uint,uint,uint) {
    (uint a0, uint b0, uint c0, uint d0, uint e0) = (a[i0], a[i0+1], a[i0+2], a[i0+3],a[i0+4]);
    return (a0, b0, c0, d0, e0);
  }
  function set22(uint[] storage a) public { set(a, 3, 0, 4, 3);}
  function get22(uint[] memory a) public view returns (uint, uint, uint, uint, uint ) {
      { uint a, uint b;} = get3333(a, 5); return (a, b, a, b, b);}
  }
  function get3333(uint[] memory a, uint i0) public view returns (uint, uint, uint, uint, uint) {
      {   uint, uint, uint, uint, uint a ;  (
