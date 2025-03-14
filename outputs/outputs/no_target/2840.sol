pragma solidity ^0.8.0;
contract newStorage2 {
    uint internal a;
    constructor (uint a) public {
        this.a = a;
    }
    function set(uint _value) public {
        a = _value;
    }
    function get() public view returns (uint) {
        return a;
    }
}
