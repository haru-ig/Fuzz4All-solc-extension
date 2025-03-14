pragma solidity ^0.8.0;
contract Array {
  uint256 [] public testArray;
   function add(uint x, uint y) public returns (uint) {testArray.push((x+y)%(2**256)); return testArray.length;}
   function max(uint x, uint y) public returns (uint) {testArray.push((x>y)?x:y); return testArray.length;}
}

pragma solidity ^0.8.0;
contract Test {
  function test() public pure {require(Array()(0) == 0, "Array() should do nothing when passing a uint");}
}
contract Array_equivalent_64_replaced2 {
    function add(uint x, uint y) public pure returns (uint) {return add(x,y);}
  uint256 public constant max =  (10 ** 64) % (10 ** 126);
  uint256 public constant min = (10 ** 64) % (10 ** 128);
}
