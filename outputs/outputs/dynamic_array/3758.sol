pragma solidity ^0.8.0;
contract A {
    uint[] memory f;
    function setF(uint[] memory f_) public {
        f = f_;
    }
}
