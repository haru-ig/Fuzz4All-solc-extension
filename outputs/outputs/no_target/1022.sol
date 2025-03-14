pragma solidity ^0.8.0;
contract SemanticMutation7
{
    address public constant value = 0x00000000000000000000000000000000000000000;
    function a() public pure {
    }
    function b() public pure returns (address)
    {
       return 0x00000000000000000000000000000000000000000000;
    }
}
pragma solidity ^0.8.0;
contract SemanticMutation8
{
    bytes32 public constant value;
    function a() public pure {
    }
    function b() public pure returns (bytes32)
    {
       bytes32 b32 = bytes32(4);
       a();
       return b32;
    }
}
pragma solidity ^0.8.0;
contract SemanticMutation9
{
    bytes32 public constant value = 0x260e1c1599bfeb4992a68baba1515e9349784db322c91fa8834bb569ee8e7b2d";
    function a() public pure {
    }
    function b() public pure returns (bytes32)
    {
       byte b = 4;
       a();
       return b;
    }
}
pragma solidity ^0.8.0;
contract SemanticMutation10
{
    uint public constant value = 0x000000000000000000000000000000000000000000000000000000000000000;
    function a() public pure {
    }
    function b() public pure returns (uint)
    {
       a();
       return 4;
    }
}
pragma solidity ^0.8.0;
contract SemanticMutation11
{
    uint public constant value = 0x0000000000000000000000000000000000000000000000000000000000000000;
    function a() public pure {
    }
    function b() public pure returns (uint)
    {
       a();
       return 0x16f;
    }
   function c() public pure returns (uint)
    {
       a();
       return -16f;
    }
}
pragma solidity ^0.8.0;
contract SemanticMutation12
