pragma solidity ^0.8.0;
contract Array_equivalent_17 {
   uint[] public x;
   uint public y;
   function set(uint i, uint _y) public {y=_y;}
   function mul() public {x=x.mul(2);}
   function set2() public payable {y++;x.push(msg.value);}
   function max() public view returns (uint) {uint max=x[0];for (uint i=1;i<x.length;i++) if (max<x[i]) {max=x[i];}return max;}
   function min() public view returns (uint) {uint min=x[0];for (uint i=1;i<x.length;i++) if (min>x[i]) {min=x[i];}return min;}
}
