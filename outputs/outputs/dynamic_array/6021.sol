pragma solidity ^0.8.0;
contract Test30018 {
    constructor () public {}
    uint[] public data;
    fallback () external { data.push(1); }
}
