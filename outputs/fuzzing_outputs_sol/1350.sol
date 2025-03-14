pragma solidity ^0.8.0;
contract Contract {
    function call_Caller_02(uint a) public payable {
        uint[] memory c = new uint[](a);
        for (uint j = 0; j < a; j++) {
            c[j] = addr.call(abi.encodeWithSignature("caller()"));
        }
    }
    function call_Caller_03(uint a) public payable {
        uint[] memory c = new uint[](a);
        for (uint j = 0; j < a; j++) {
            c[j] = addr.call(abi.encodeWithSignature("caller()", "someValue"));
        }
    }
    constructor() {
        addr.setValue(uint(this), 1);
    }
    function caller() public view returns (address) {
        return address(0);
    }
    function setValue(address _addr, uint _value) public {
        addr[_addr].setValue(_value);
    }
}
