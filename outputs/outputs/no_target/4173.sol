pragma solidity ^0.8.0;
contract P5{
  uint internal x;
  uint256 internal y;
  function h() internal view returns (uint256) { return x + y; }
}

pragma solidity ^0.8.0;
contract P4{
  uint internal x;
  uint256 internal y;
  function h() internal { return x + y; }
}

pragma solidity ^0.8.0;
contract P3{
  uint internal x;
  uint256 internal y;
  function h() internal mod 60 minutes returns (uint256) { return x + y; }
}

pragma solidity ^0.8.0;
contract P2{
  uint internal x;
  uint256 internal y;
  function h() internal mod 60 minutes mod 60 minutes returns (uint256) { return x + y; }
}

pragma solidity ^0.8.0;
contract P1{
  uint internal x;
  uint256 internal y;
  function h() internal mod 1 hours { return x + y; }
}

contract P{
  uint internal x;
  uint256 internal y;
  function h() returns (uint256) { return x + y; }
}
