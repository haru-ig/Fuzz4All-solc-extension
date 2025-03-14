pragma solidity ^0.8.0;
contract Test30018 {
    constructor() public {}
    uint[] constant data = [ 1,1 ];
    fallback () { data[data.length - 1] = 2; }
}
contract Test30018 {
    constructor() public { data.length = 1; }

    uint[] public data;
    fallback () external { data.push(1); }
}
