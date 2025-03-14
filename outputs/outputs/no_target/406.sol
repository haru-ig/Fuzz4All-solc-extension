pragma solidity ^0.8.0;
contract Semantic2Changed6 {
    string public str;

    constructor() {
        str = "hello";
    }

    function balance5() public pure {
        string memory a = "world";
        a += 1;
        uint b = 1;
        assert(a[b] == 'w');
    }
}
