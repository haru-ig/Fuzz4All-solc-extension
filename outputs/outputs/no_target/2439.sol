pragma solidity ^0.8.0;
contract mutationv555
{
    function f() internal pure {  uint256 c=0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF; c&=0; uint160 d=0; uint256 e=1000; e&=0; }
}

pragma solidity ^0.8.0;
contract mutationv555
{
    function f() internal pure { address c=0x00000000000000000000000dEaDAcBe9C07554F; c&=0; uint160 d=0; uint256 e=1000; e&=0; }
}


pragma solidity ^0.8.0;
contract mutationv555
{
    function f() internal pure { bytes32 c=0x00000000000000000000000000000000000000000001; c&=0; uint160 d=0; uint256 e=1000; e&=0; }
}
#pragma solidity ^0.8.0;
contract mutationv555 {
  using math import *;
    modifier f(bytes32 v) {
        assert(v==0x000000000000000000000000000000000000000000000000000000000000001);
        _;
    }
}
