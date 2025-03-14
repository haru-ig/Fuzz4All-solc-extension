pragma solidity ^0.8.0;
bytes memory empty;
contract NotBugger { function isBugger() public pure
    returns (bytes memory) {
    return empty; } }
contract Contract { function checkIfBugger(address addr)
    public view returns (bool) {
    bytes memory buf = not(notBugger2(address(1)));
    if(buf == empty) {
        buf = contract(contract()).isBugger();
        if(buf!= empty) {
            return false;
        }
    }
    return true; } }
contract NotBugger { function isBugger() public view returns (bool)
    {
    if(bytes(this).length == 0) {
        return false;
    }
    if(bytes32(not(this))) {
        return false;
    }
    return true; } }
contract NonBugger { bytes32 public constant bugger = notBugger2(address(1)); }
contract Bugger { address public constant owner = notBugger2(address(1)); }
contract Bugger2 { address bugger; }
contract Bugger3 { function bugger2(address) public pure returns (bool)
    {
    return true; } }
contract NotBugger2 { function notBugger2(address) public pure returns (bool)
    {
    return false; } }
