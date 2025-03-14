pragma solidity ^0.8.0;
contract MutatedCaller4 {
    function mut(address _addr) payable external {}
}
contract MutatedCaller3 {
    function mut(uint256 _index) payable external {}
}
contract MutatedCaller2 {
    function mut(address _addr, uint256 _index) payable external {}
}
contract MutatedCaller1 {
    function mut(address _addr, address _addr2) payable external {}
}
contract MutatedCaller0 {
    function mut() payable external {}
}

pragma solidity >=0.4.21 <0.9.0;
contract Caller {
    function doCall(address _target, uint256 _value, bytes memory _input) public payable returns (bool success) {
        success = _target.call.value(_value)(_input);
        return success;
    }
}
