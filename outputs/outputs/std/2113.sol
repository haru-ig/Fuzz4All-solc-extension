pragma solidity ^0.8.0;
contract Mutated_3_4_6 {
    uint x = 10;
    uint y = 10;
    uint z = 10;
    function add(uint x2) public pure returns (uint a) {
        return a = x + x2;
    }
}

pragma solidity ^0.8.0;
contract Mutated_4_5_7 {
   uint x;
   uint y;
    function test(uint _x, uint _y) public pure returns (uint) {
        if (_x < _y) {
            return this.add(2);
        } else {
            return this.mult();
        }
    }
   function random() public returns (uint) {
        return uint(uint(keccak256(abi.encodePacked(keccak256(abi.encodePacked(keccak256(_x, _y)))))));
    }
  function add(uint x2) public pure returns (uint a) { return a = x + x2; }
  function mult() public pure returns (uint a) { return a = x * y; }

}
