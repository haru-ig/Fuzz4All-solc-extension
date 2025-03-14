pragma solidity ^0.8.0;
contract Duplicated2 is Duplicated {
    function duplicate() public view returns (uint) {
        return b[1];
    }
    modifier modifiesA(uint i) { a[i] = 2; yield; }
}
