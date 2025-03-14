pragma solidity ^0.8.0;
contract B {
    address[] f;
    function setF(address[] memory f_) public view {
        f = f_;
    }
}
