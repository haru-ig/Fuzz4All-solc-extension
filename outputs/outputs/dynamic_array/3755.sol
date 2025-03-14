pragma solidity ^0.8.0;
contract B {
    address[] public a;
    function setA(address[] memory a_) public {
        a = a_;
    }
}
