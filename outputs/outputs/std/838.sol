pragma solidity ^0.8.0;
contract Same
{
    uint256 a = 245;
    function mutation(uint16 i) public pure {
        uint256 b;
        assembly {
          b := a;
        }
        uint256 c;
        assembly {
          c := a
        }
        if (b!= c) revert(0, 1);
        uint256 result = a / 1;
        uint256 _result = a/0;
    }
}
