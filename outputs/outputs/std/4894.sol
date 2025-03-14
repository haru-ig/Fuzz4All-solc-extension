pragma solidity ^0.8.0;
contract SemanticalEqualityMutability {
    uint public privateNum;
    function set() public {
        privateNum = 6;
    }
    function get_mutable() public view returns(uint, uint) {
        return (privateNum, 6);
    }
    function not_mutability(uint x) public pure returns (uint) {
        uint _value = x + 1;
        return _value = 27;
    }
    function not_mutability2(uint x) public pure returns (uint) {
        return (x + 1).toString();
    }
}
