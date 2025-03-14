pragma solidity ^0.8.0;
interface Mutated
{
        function a(uint[6] memory x) external;
        function d(uint memory x) external;
        function b(address memory x) external;
        function a(uint256 x) external;
        function b(uint8[3] memory x) external;
}

pragma solidity ^0.8.0;
contract Nonmutating
{
        uint256 public constant CONSTANT = 1;
}

pragma solidity ^0.8.0;
contract Nonmutating2
{
        uint256 public constant CONSTANT = 1;
        uint256 public constant CONSTANT2 = 2;
}

pragma solidity ^0.8.0;
contract Mutating
{
        uint256 public constant CONSTANT1 = 1;
        uint256 public constant CONSTANT2 = 2;
        uint256 public constant CONSTANT3 = 3;
        uint public constant CONSTANT4 = 4;
        uint public constant CONSTANT5 = 5;
        uint public constant CONSTANT6 = 6;
        uint public constant CONSTANT7 = 7;
        address constant ADDRESS1 = address(0x011);
        uint external constant CONSTANT_EXTERIOR = 0x0567;
        uint public constant CONSTANT_PUBLIC = 0xabcde;
}
}
