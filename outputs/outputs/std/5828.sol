pragma solidity ^0.8.0;
contract Mutated16{
    function mutated16(uint[4] memory a) public pure returns (uint) {
        a[3]=16;
        return a[0];
    }
}

pragma solidity ^0.8.0;
contract Mutated17{
    function mutated17(uint[4] memory a) public pure returns (uint) {
        uint b = a[3];
        a[3] = a[0] + a[1] + a[2] + (a[0]*16);
        return a[3];
    }
}

pragma solidity ^0.8.0;
contract Mutated18{
    function mutated18(uint[4] memory a) public pure returns (uint) {
        uint b = a[3];
        uint c = a[0] - a[1];
        a[3] = a[3] - (a[0]*16);
        return a[3];
    }
}
