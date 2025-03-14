pragma solidity ^0.8.0;
contract Semantic016
{
  constructor () {}
  struct Rectangle
  {
    address a;
    mapping (address => mapping (address => Rectangle)) b;
  }
}

pragma solidity ^0.8.0;
contract Semantic017
{
  constructor () {}
  struct Rectangle1
  {
    uint256 a;
    mapping (address => mapping (address => mapping (uint256 => Rectangle1))) b;
  }
}

pragma solidity ^0.8.0;
contract Semantic039
{
  constructor () {}
  struct Rectangle2
  {
    uint256 b;
    uint256 c;
    mapping (uint256 => Rectangle1) a;
  }
}

pragma solidity ^0.8.0;
contract Semantic059
{
  constructor () {}
  struct Rectangle3
  {
     mapping (uint => uint256) d;
     mapping (uint => uint => uint256) e;
     mapping (uint => uint => mapping (uint256 => uint256)) f;
  }
}

pragma solidity ^0.8.0;
contract Semantic068
{
  constructor () {}
  struct Rectangle4
  {
     uint256 a;
     mapping (uint256 => address) b;
     mapping (uint256 => uint256) c;
  }
}

pragma solidity ^0.8.0;
contract Semantic089
{
  constructor () {}
  struct Rectangle4a
  {
     uint256 a;
     mapping (uint256 => address) b;
     mapping (uint256 => uint256) c;
  }
}

pragma solidity ^0.8.0;
contract Semantic096
{
  constructor () {}
  struct Rectangle4b
  {
     uint256 a;
     uint256 b;
     mapping (uint256 => uint256) c;
     mapping (uint256 => uint256) d;
  }
}

pragma solidity ^0.8.0;
contract Semantic104
