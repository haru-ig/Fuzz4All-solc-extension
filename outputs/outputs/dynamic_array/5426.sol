pragma solidity ^0.8.0;

contract Test37 is Test36 {

    uint[] internal arr;
    function f() public view returns(uint[]) {
        return arr;
    }
}
