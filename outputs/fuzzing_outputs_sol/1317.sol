pragma solidity ^0.8.0;
contract Contract {
    uint count;
    function fallback() public payable {}
    function data() public pure {
            count = 1;
    }
}
