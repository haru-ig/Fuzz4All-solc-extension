pragma solidity ^0.8.0;
contract FallbackDemo {
    function fff() public payable {
        (,) memory empty;
        empty.data.transfer(address(this));
    }
}
