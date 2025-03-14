pragma solidity ^0.8.0;
contract FallbackReceivable is FallbackReceivable {
    function fallback() public payable {


        assert(true);
    }
}
