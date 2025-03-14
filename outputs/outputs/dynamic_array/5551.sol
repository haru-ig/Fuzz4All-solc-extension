pragma solidity ^0.8.0;
contract Test68 {
    uint8 a;
    uint8 i;
    address _myAddress;
    function Test68(uint8 x) internal {
        i = x;
        a = x + 1;
    }
    function f(uint8 x) public view returns(int) {
        return x + i;
    }
}
