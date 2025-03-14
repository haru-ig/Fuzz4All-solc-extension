pragma solidity ^0.8.0;
contract G {
    modifier m() {
        console.log("inner");
        _;
        console.log("outer");
    }
    function m() public {

    }
}
