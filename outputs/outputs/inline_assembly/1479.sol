pragma solidity ^0.8.0;
contract Mutant41
{
  constructor () {}
  enum Rectangle {Rect1(1), Rect2(2), Rect3(3), Rect4(4)};
  struct Rectangle
  {
    Rectangle rectangle_type;
    mapping (address => uint128) amount;
  }
}


contract SemanticTests
{
  function SemanticTests_Constructor() public
  {
    address contractAddress = address(new Mutant12n4.Rectangle());
    address address1 = address(block.coinbase);
    uint256 a1 = 123;
    a1;

    uint256 b1 = mutant.b[address1];
    uint256 b2 = mutant.b[address1];
    b1;
    b2;

    uint256 c1 = mutant.b[address1];
    c1;

    address address2 = address(new Mutant41.Rectangle());
    uint256 d1 = 123;
    uint256 d2 = 456;








    uint256 a_c = (uint256)mutant.rectangle_type;
    uint256 a_d = (uint256)address4(address2);
    uint256 a_e = (uint256)address4(address2)();
    a_c;
    a_d;
  }
}

pragma solidity ^0.8.0;
contract Mutant62
{
  constructor () {}
  struct Rectangle
  {
    uint128 a;
    uint256 b;
    uint128 c;
  }
}
  function Mutant62(address _a, uint128 _b, uint128 _c) public
  {
    if (_a == _b)
    {
      rectangle_type = Rectangle.Rect1(_b);
      b[_a] = _c;
    }
    else
    {
      Rectangle temp;
      uint128 c = 0;
      rectangle_type = Rectangle.Rect1(temp.b);
      b[_a] = _c;
    }
  }
