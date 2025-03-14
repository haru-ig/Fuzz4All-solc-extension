pragma solidity ^0.8.0;
contract Mutated4{
    uint[] public a;
    address public b;
    bytes32 private d;
    constructor(){
        a = new uint[](1);
        a[0] = 1;
        b = address(0);
    }
    function mutated21() public returns (uint) {
        return a[0];
    }
    function mutated22() public returns (uint) {
       a[0]++;
       a[0]++;
       return a[1];
    }
    function mutated34() public returns (uint) {
       a[0]++;
       a[0]--;
       a[0]--;
       a[0]--;
       a[0]--;
       a[0]--;
       return a[1];
    }
    function mutated43() public returns (uint) {
       a[0]++;
       a[0]--;
       a[0]++;
       a[0]--;
       a[0]++;
       return a[0];
    }
    function mutated46() public returns (uint) {
       a[0]++;
       a[0]++;
       a[0]++;
       a[0]++;
       a[0]++;
       a[0]--;
       a[0]--;
       a[0]--;
       a[0]--;
       return a[0];
    }
    function mutated47() public returns (uint) {
       a[0]++;
       a[0]--;
       a[0]--;
       a[0]--;
       a[0]--;
       a[0]--;
       return a[0];
    }
    function mutated50() public returns (uint) {
       a[0]++;
       a[0]--;
       a[0]++;
       a[0]++;
       a[0]++;
       a[0]++;
       a[0]++;
       a[0]++;
       a[0]++;
       return a[0];
    }
    function mutated114550(uint _a, uint _b) public returns (uint) {
       a[0]++;
       a[0]--;
       a[0]++;
       a[0]--;
       a[0]--;
       a[0]--;
       return a[0];
    }
}
