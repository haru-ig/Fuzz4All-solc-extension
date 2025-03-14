pragma solidity ^0.8.0;
contract Test3 {
    function useme() public {
        uint256[] mem1 = new uint256[](100);
        mem1 = new uint256[](1);
        mem1[0] = 4289434;
        _value = 321;
        address a = 0xaB975D097934487538FFb8a07cD58B630AB26021;
        a.transfer(_value);
        mem1[12] = 235266;
        emit ValueIsUpdated(mem1[12]);
    }
    event ValueIsUpdated(uint64);
}
