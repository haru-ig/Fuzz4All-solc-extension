pragma solidity ^0.8.0;
contract Semantic6Caller1 {
    function semantic1() pure public {
        uint x = 22;
        uint y = 11;
        uint z = MutateSemantic6Caller4.modifyC7Mutate(x, y);
        require(z == 5);
        z = MutateSemantic6Caller4.modifyC8Mutate(x, y);
        require(z == 3);
        z = MutateSemantic6Caller4.modifyC9Mutate(x, y);
        require(z == 13);
    }
}


uint256 constant ETHER = 1;

address constant ZERO_ADDRESS = 0x0;

address constant ZERO = ZERO_ADDRESS;
