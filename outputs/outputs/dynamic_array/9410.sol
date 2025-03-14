pragma solidity ^0.8.0;
interface Interface2 {
    function set() public returns (uint8);
}
contract Arrays2 is Interface2 {
    function set() public pure returns (uint8) {
        return 129;
    }
}
