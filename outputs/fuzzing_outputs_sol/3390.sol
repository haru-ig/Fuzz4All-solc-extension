pragma solidity ^0.8.0;
contract B {
    constructor() public {}
    function fallback() public pure returns(uint) {
        return 5;
    }
}
