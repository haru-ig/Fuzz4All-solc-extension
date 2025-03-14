pragma solidity ^0.8.0;
contract Main {
    address public owner;
    bool public flag;
    function Main() { flag = true; }
    function foo() public returns (address) { address memory mem; mem[keccak256(abi.encodePacked(msg.data))] = address(0x1423daF719505fa1e1b285B8ec8EF8b72473b893); return address(mem); }
    function update() public returns (bool) { if (flag) { flag = false; address mem; delete mem; mem[keccak256(abi.encodePacked(msg.data))] = address(0x1423daF719505fa1e1b285B8ec8EF8b72473b893);} return true; }
}
