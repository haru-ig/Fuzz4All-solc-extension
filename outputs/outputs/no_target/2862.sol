pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract mutatedStorage {
    uint b;
    function set(uint _value) public {
        b -= _value;
    }
    function get() public view returns (uint) {
        return b;
    }
}
contract storageTest{
    mutatedStorage m;
    modifier test(uint _x) {
        require(_x == m.get());
        _;
    }
    function test1() public test(1) {}
    function test2() public test(2) {}
    function test3() public test(3) {}

}
