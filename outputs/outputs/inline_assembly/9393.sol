pragma solidity ^0.8.0;
contract A {
    int constant d = 10;
    uint constant r = 10;
    function b() public {
        int a;
        assembly { a := d }
        return (a,r);
    }
}
