pragma solidity ^0.8.0;
contract B {
    uint x;
    uint z;
    bytes constant _foo = "Hello";
    mapping(bytes32) public xbar;
    function set(uint _z) public {
        z = _z;
    }
    function func() public payable {
        z = x;
        uint _z = 3;
        set(_z);
    }
    function foo() public view returns (bytes memory) {
        return _foo;
    }
    function xbar(string memory key, uint _value) public view returns (uint) {
        return xbar[keccak256(abi.encodePacked(key))];
    }
}
