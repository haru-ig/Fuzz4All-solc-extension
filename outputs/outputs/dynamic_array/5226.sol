pragma solidity ^0.8.0;
contract Test {
    uint[] public a;

    uint[] public memoryb;

    bytes[] public bytesc;

    mapping(uint => uint[]) public bytesb;

    function amethyst() public {
        uint[] memory temp = f("f", "f", "f", "f", "f", "f", "f","f", "memory", "bytes memory", "bytes[] memory");
    }
    function f(string memory) internal pure returns (uint[] memory) {}
    function f(bytes memory) internal pure returns (uint[] memory) {}
    function f(bytes[] memory) internal pure returns (uint[] memory) {}
}
