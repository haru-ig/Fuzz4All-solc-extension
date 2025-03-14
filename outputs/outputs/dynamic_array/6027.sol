pragma solidity ^0.8.0;
contract Test30338 {
    constructor () public {}
    uint[] private data;
    fallback () external { data.push(1); }
}
