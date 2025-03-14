pragma solidity ^0.8.0;
contract A {
    uint public names;
    function b() public {
        uint x = A.alphabet;
        names = x;
        A.names = x;
    }
    uint public number;
    function a() public view returns (bool) {
        number ++;
        return true;
    }
}
