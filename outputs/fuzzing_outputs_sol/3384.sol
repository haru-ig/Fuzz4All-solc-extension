pragma solidity ^0.8.0;
contract B {
    function fallback() public pure returns(uint) {
        return 5;
    }
}
