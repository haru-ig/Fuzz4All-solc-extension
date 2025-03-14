pragma solidity ^0.8.0;
contract P11{
  uint x;
  function h() internal view returns (uint256) { return x; }
}
contract P12{
}
pragma solidity ^0.8.0;
contract P13{
  uint x;
  function h() internal pure returns (uint256) { return x;}
}
contract P14{
}
pragma solidity ^0.8.0;
contract P15{
  uint x;
  function h() internal returns (uint8) { require(x>=0,"Test Fail"); return x;}
}

pragma solidity ^0.8.0;
contract P16{
  uint8 x;
  function h() internal returns (uint8) { require(x>=0,"Test Fail"); return x;}
}
contract P17{
}
pragma solidity ^0.8.0;
contract P18{
  uint8 x;
  constructor (uint8 _x) { x = _x; }
  function h() internal {
    require(x>=0,"Test Fail");
  }
}
