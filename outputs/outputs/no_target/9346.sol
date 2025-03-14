pragma solidity ^0.8.0;
contract semanticallyEquiv2
{
}
contract semanticallyEquiv4
{
}
pragma solidity ^0.8.0;
contract semanticallyEquiv8
{
}
pragma solidity 0.8.9;
contract semanticallyEquiv0
{
    function f() public pure {
        asm {
            mstore(0x3, 31);
            mstore(0x31, 36);
            mstore(0x313, 46);
            mstore(0x3131, 47);
            mstore(0x31313, 129);
        }
    }
}
pragma solidity ^0.5.0-beta.2;
contract semanticallyEquiv6  {
  function f() public pure {
    uint128 d = 18446744073709551616;
    assembly {



      if eq(mload(0x313131), 0xFF) {

        revert()
      }
      if eq(mload(0x313), 0xFF) {

        revert()
      }
    }
  }
}
