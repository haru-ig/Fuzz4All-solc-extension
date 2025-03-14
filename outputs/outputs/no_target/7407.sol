pragma solidity ^0.8.0;
contract Test
{
  function test(uint256 param) public {
    uint256 _param = uint256(0);
    _param = 2;
    _param = add(uint256(0),param);
  }
}
contract Test
{
  function test(uint256 param) public {
    param = add(uint256(0),param);
  }
  function add(uint256 a,uint256 b) public pure returns(uint256 c)
  {
    c = a+b;
  }
}
contract Test
{
  function test(uint256 a1,uint256 b1) public
  {
    uint256 c1;
    (c1,) = add(uint256(0),a1,b1);
  }

  function test(uint256 a1,uint256 b1) public
  {
    uint256 c1;
    uint256 c2;
    (c1,c2,) = add(uint256(0),a1,b1);
  }

}
