pragma solidity ^0.8.0;
contract Perturbed {

    function f() public pure {
    }
}
contract Perturbed2 {

    function f() public pure {}

    modifier g() {
        require(address(this).balance >= 100 ether);
        f();
        _;
    }
    function c() public pure {
        g;
    }
    function h() public pure {
        f;
        f;
        f;
    }
}
