pragma solidity ^0.8.0;
contract Test30019 {
    bool public data;
    constructor () public {}
    fallback () external { data = true; }
}
