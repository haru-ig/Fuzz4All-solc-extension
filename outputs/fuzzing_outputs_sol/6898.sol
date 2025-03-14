pragma solidity ^0.8.0;
contract Fallback {
    mapping(bytes4 => address) private _reentrancyTable;
    function receive() public payable {}
    function callFallback() public payable {
        _reentrancyTable[msg.sig] = msg.sender;
    }
}
