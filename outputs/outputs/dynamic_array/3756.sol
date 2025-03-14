pragma solidity ^0.8.0;
contract A {
    address[] public f;
    function setF(address[] memory f_) public {
        f = f_;
    }
}
