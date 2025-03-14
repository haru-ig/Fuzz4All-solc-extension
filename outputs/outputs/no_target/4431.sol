pragma solidity ^0.8.0;
contract B {
    modifier myMod(uint _){
        require(msg.value <= 100, "Too Big");
        _;
    }
    function myFunction() public myMod(8) {}
}
