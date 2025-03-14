pragma solidity ^0.8.0;
contract Array_equivalent_16 {
   function add(uint x, uint y) public view returns (uint) {return Array_equivalent_15.add(x, y);}
}

pragma solidity ^0.8.0;
contract Array_equivalent_17 {
   function add(uint[] memory x, uint y) public view returns (uint) {return x.add(y);}
}
