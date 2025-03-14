pragma solidity ^0.8.0;
contract Test30020 {
    uint[] public data;
    constructor () public {
        data.push(1);
    }
    fallback () external {
        data.push(2);
    }
}
