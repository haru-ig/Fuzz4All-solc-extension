pragma solidity ^0.8.0;
contract B {
    uint alphabet = 0x07;

    uint[] arrayA;
    bytes data;

    function add2(uint x) public returns (uint) {
        uint p = 2*x + 2*alphabet;
        return p;
    }
    function change(uint[] memory a, uint[] memory b) public {
        uint[] memory c = a;
        data = "Hello World!";
        c = b;
    }
    function add(uint x) public returns (uint) {
        uint x2 = string(abi.encodePacked(x));
        uint z = add2(uint(x2));
        return z;
    }
    function call() public returns(uint) {
        B c = B(msg.sender);
        uint z = c.add(uint(msg.sender));
        return z;
    }
    address externalAddress = address(this);
    function returnAddress() public view returns(address a){
      return a;
    }
    uint n;
    function check() public returns (uint){
        return n;
    }
}
