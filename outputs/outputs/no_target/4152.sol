pragma solidity ^0.8.0;
contract P7{
  uint internal x;
  function h() internal returns (uint) { return x - 1; }
}
pragma solidity ^0.8.2;
pragma experimental ABIEncoderV2;
contract P8{
  uint internal x;
  function h() internal returns (bytes memory) { return abi.encode(123); }
}
pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract P9{
  uint internal x;
  function h() internal returns (uint) { return x; }
}
pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract P10{
  uint internal x;
  function h() internal returns (uint) { return x; }
}
pragma solidity ^0.8.0;
contract P11{
  uint internal x;
  function h() internal returns (uint) { return x; }
}
pragma solidity ^0.8.0;
contract P12{
  uint internal x;
  function h() internal returns (uint) {
    return bytes1(24) + uint16(24);
  }
}
contract P13{
  uint internal x;
  function h() internal returns (uint) {
    return bytes2(110) + uint256(110);
  }
}
