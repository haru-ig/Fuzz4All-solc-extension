pragma solidity ^0.8.0;
contract Maker {
    fallback () payable {
        require(true);
    }
    receive () {
        require(true);
    }
}
