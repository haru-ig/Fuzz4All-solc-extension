pragma solidity ^0.8.0;
contract Test67 {
    uint[] a;

    function setA(uint[] memory _a) public {
        a = _a;
    }

    function getA() public view returns (uint[]) {
        return a;
    }
}
