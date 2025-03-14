pragma solidity ^0.8.0;
contract Caller3 {

    function _fallback() public payable {
        self.transfer(address(this).balance);
    }
}
