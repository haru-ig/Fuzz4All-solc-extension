pragma solidity ^0.8.0;
contract Mutated16{
    function mutated16(uint[4][3] memory a) public pure returns (uint) {
        uint b = a[0][0];
        a[0][0] = 16;
        return a[0][0];
    }
}
contract MutatedS0{
    constructor() {}
    function mutatedS0(uint[4] memory a) public pure returns (uint) {
        uint b = a[0];
        a[0] = 1;
        return a[0];
    }
}

pragma solidity ^0.8.0;
contract MutatedS1{
    constructor() {}
    function mutatedS1(uint[4] memory a) public pure returns (uint) {
        for(uint i = 0; i < a.length; ++i)
            a[i] = 1;
        return a[0];
    }
}
