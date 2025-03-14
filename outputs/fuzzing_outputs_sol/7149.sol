pragma solidity ^0.8.0;
contract Caller is IExample1,Example2 {
    address payable newaddress;
    constructor(address payable _addr) {
        newaddress = _addr;
        Example2.setCheckFor(this);
    }
    function onlyMe() public onlyMe{
        Example2.setCheckFor(newaddress);
    }
    function isValid() public view returns(bool) {
        return getCheckFor() == keccak256("hello world");
    }
    function getCheckFor() public view returns (bytes32) {
        return getCheckForExample();
    }
    function getCheckForExample() public pure returns (bytes32) {
        return Example2.getCheckFor().xor(Example2.getCheckFor());
    }
}
