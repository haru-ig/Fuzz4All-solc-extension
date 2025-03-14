pragma solidity ^0.8.0;
contract Test {
    function modif() public view{
        return address(uint(uint(keccak256(abi.encodePacked(fallback(),block.number)))))==uint(uint(uint(keccak256(abi.encodePacked(fallback(),block.timestamp)))))?int256(keccak256(abi.encodePacked(fallback(),block.height)))):100;
    }
}
