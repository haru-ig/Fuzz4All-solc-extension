pragma solidity ^0.8.0;
contract C60_bug605547981132 {
  uint88 b = 0xfffffff;
  function get() public view returns(uint160) { uint a; uint160 b; a = uint(uint160(uint8(uint8(b)))); return b; }
}

pragma solidity ^0.8.0;
contract C70_bug705547981132 {
  uint88 b = 0xfffffff;
  function set() public { uint a; uint160 b; a = uint(uint160(uint8(uint8(b)))); return b; }
}

pragma solidity ^0.8.0;
contract C80_bug805547981132 {
  uint88 b = 0xfffffff;
  function get() public view returns(uint160) { uint a; uint160 b; a = uint(uint160(uint8(uint8(b)))); return b; }
}
contract C40c60_bug405547981132 {}

pragma solidity ^0.8.0;
contract C60c70_bug605547981132 {}
contract C070_bug705547981132 {}

pragma solidity ^0.8.0;
contract C60c0070_bug605547981132 {}
contract C040_bug805547981132 {}

pragma solidity ^0.8.0;
contract A30_bug305547981132 {
 function set() public {}
}

contract A30c_bug305547981132  {
 function set() public {}
}

pragma solidity ^0.8.0;
contract C070c040c60_bug6055479811
