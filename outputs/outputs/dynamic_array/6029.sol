pragma solidity ^0.8.0;
contract Test30018b {
    constructor () public {}
    uint[] public data;
    uint internal constant _MAX_SAFE_UINT = (1<<(256*2));

    fallback () external { data.push(1); }
}
