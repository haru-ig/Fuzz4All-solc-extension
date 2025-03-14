pragma solidity ^0.8.0;
contract C {
    uint constant r = 10;
    uint r1 = r;
    uint r2 = r;
    function g() public pure returns (uint) {
         return r;
    }
}
contract C {
    uint constant r = 10;
    uint r1 = r;
    uint r2 = r;
    uint r3 = r;
    address sender = msg.sender;
    function eg() public view returns (uint) {
         return r;
    }
    function eg2() public view returns (uint) {
         return r;
    }
    function eg3(uint _z) public view returns (uint){
         return r;
    }
}
