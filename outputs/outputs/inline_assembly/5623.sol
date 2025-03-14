pragma solidity ^0.8.0;
contract ConstantAccessBlock7 {
    function test() public returns (bool) {
        address _contract;
        assembly {
            _contract := caller()
        }
        return owner() == _contract;
    }

    function getBalance() public view returns(uint) {
        return address(this).balance;
    }

  function owner() public view returns(address) {
        return msg.sender;
    }
}
