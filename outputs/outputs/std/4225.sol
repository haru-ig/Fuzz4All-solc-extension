pragma solidity ^0.8.0;
contract Mutate {
    uint b;
    function Mutate(uint c) public {
        b = c + 1000;
    }
}

pragma solidity ^0.8.0;
contract Stable {
    uint c;
    function Stable(uint d) public {
        c = d - 2000;
    }
}

pragma solidity >0.6;
contract Random{
    function Rand(uint) public pure returns (uint Random) {
        return uint(uint(uint40(keccak256("");)) * uint(uint(blockhash(block.number-1)))));
    }
}
