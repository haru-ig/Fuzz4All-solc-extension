pragma solidity ^0.8.0;
contract c {
    function c() public pure {
        uint i = 34;

        uint64 val  = uint64( i + 1);
        uint64 val1 = staticcast< uint64>( i );
        i -= 1;

        uint val2 = 107766931;
    }
}
