pragma solidity ^0.8.0;
contract A {
    address[] f;
    function setF(address[] memory f_) public {
        f = f_;
    }
}
