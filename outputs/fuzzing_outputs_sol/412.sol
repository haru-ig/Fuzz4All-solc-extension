pragma solidity ^0.8.0;
contract SafelyCaller {
    receive () external payable {}
    fallback () public {}
}
