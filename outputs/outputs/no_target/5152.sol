pragma solidity ^0.8.0;
contract SimpleExample {
    uint256 public counter;
    bytes public data;
    constructor (bytes b) {
        data = b;
    }
    function logdata () public view returns (uint8 c){
        uint256 v = 0;
        uint8 b = 30;
    assembly
        {c := sub(0,data,0)}
    }
    function increment() public {
        uint256 value = 0;
        value = value + 1;
    }
}
