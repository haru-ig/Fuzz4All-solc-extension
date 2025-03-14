pragma solidity ^0.8.0;
contract Caller is Fallback {
    uint public data;

    function set(uint _data) public {
        data = _data;
    }

    function call() public {
        Fallback(address(this)).fallback(data);
    }
}
