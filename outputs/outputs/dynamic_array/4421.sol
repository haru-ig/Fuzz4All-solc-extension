pragma solidity ^0.8.0;
event Log();
contract Mutated {
    struct User {
        uint32 length1;
        uint256 array;
        uint32 length2;
    }
    mapping (address => User) internal users;
    modifier test { emit Log(); _; }
    constructor() public { users[msg.sender] = User(0,0,0); }
    function test() public test returns (address[] memory) { return [ users[msg.sender].array ]; }
    function set(address x, uint256 y) public test returns (bool) { users[x].array = y; return true; }
    function test2(address[] memory input) public test returns (uint256 ) { return (input[0])[0]; }
    function test3a() public test returns (address) { return users[msg.sender].array; }
    function test3b() public test returns (address) { address[] memory temp = new address[](1); temp[0] = users[msg.sender].array; return temp[0]; }
    function test4a() public test returns (address) { address x; x = users[msg.sender].array; return x; }
    function test5a() public test returns (uint32) { uint32[] memory x = new uint32[](1); x[0] = users[msg.sender].length1; return x[0]; }
    function test5b() public test returns (uint32) { uint32[] memory x = new uint32[1]; x[0] = users[msg.sender].length1; return x[0]; }
}
