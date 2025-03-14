pragma solidity ^0.8.0;
contract C {
    constructor(uint256 a, uint256 b) {
    }
    constructor(uint256 a) {
    }
}


contract Test
{
    function main()
    {
        C c;
        c = C(2);
        c = C(200);
    }
}
