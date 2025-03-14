pragma solidity ^0.8.0;
contract App {
    A a;
    function run() view public returns (int) {
        uint32 b = a.g();
        uint d = a.g();
        return b.g() + d.g();
    }
}
