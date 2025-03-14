pragma solidity ^0.8.0;
contract NoMutatedCaller {
    function normal() public {
        emit Normal();
    }
    event Normal();
}
