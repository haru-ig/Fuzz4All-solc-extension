pragma solidity ^0.8.0;
contract Test30021 {
    uint[] public data;
    constructor () public {
        data.push(1, 2);
    }
    fallback () external {
        data.push(3, 4);
    }
}
