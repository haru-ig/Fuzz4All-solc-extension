pragma solidity ^0.8.0;
contract Mutant10
{
  using Mutant10t for Mutant10t.Rectangle;
  struct Rectangle
  {
    uint128 a;
    uint128 b;
  }


}

pragma solidity ^0.8.0;
contract Mutant9
{
  using Mutant10t for Mutant10t.Rectangle;
  using Mutant10t for Mutant10t.Rectangle.a;
  struct Rectangle
  {
    uint128 b;
  }


  uint128 a;
}

pragma solidity ^0.8.0;
contract Mutant8
{
  using Mutant10t for Mutant10t.Rectangle;
  using Mutant10t for Mutant10t.Rectangle.a;
  using Mutant10t for Mutant10t.Rectangle.b;
  struct Rectangle
  {
    uint128 a;
    uint128 b;
  }
}

pragma solidity ^0.8.0;
contract Mutant7t
{
  using Mutant10t for Mutant10t.Rectangle;
  using Mutant10t for Mutant10t.Rectangle.a;
  using Mutant10t for Mutant10t.Rectangle.b;
  using Mutant10t for Mutant10t.Rectangle.b;

  struct Rectangle
  {
    uint128 a;
  }
}

pragma solidity ^0.8.0;
contract Mutant7
{
  using Mutant10t for Mutant10t.Rectangle;
  using Mutant10t for Mutant10t.Rectangle.a;
  using Mutant10t for Mutant10t.Rectangle.b;

  struct Rectangle
  {
    uint128 a;
  }
}

pragma solidity ^0.8.0;
contract Mutant6t
{
  using Mutant10t for Mutant10t.Rectangle;
  using Mutant10t for Mutant10t.Rectangle.a;
  using Mutant10t for Mutant10t.Rectangle.b;
  using Mutant10t for Mutant10t.Rectangle.b;
  using Mutant10t for Mutant10t.Rectangle.b;

  struct Rectangle
  {
    uint128 a;
    uint12
