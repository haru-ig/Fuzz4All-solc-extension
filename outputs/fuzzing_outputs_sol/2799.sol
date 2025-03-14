pragma solidity ^0.8.0;


contract Caller5 {
    Caller4 public caller = Caller4();

    function fallback() external payable {
        uint x = 72;
        selfdestruct(address(caller));
    }
}
