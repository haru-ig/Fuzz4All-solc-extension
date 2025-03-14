pragma solidity ^0.8.0;
interface Fallback2
{
        function another(bytes memory data) payable external;
}
pragma solidity ^0.8.0;
fallback2
contract Fallback2
{
    function a(bytes memory data) public payable
    {
        require((keccak256(abi.encodePacked(data)) == keccak256("0x")) || (keccak256(abi.encodePacked(data)) == keccak256("0xf")) || (keccak256(abi.encodePacked(data)) == keccak256("0xf2")) || (keccak256(abi.encodePacked(data)) == keccak256("0xf24")), "Error: Data must have length 10, 11, 12, 13, or 14");
        fallback();
    }

    function another(bytes memory data) public payable
    {
        fallback();
    }
}
