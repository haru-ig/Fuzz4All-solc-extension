pragma solidity ^0.8.0;
contract Test47 {
    function test() public pure {
        assembly {



            dynCalldata x = 0

            dyndata[x]
            dyndata._store(0)
            dyndata._store(1)
            dyndata._store(2)
            dyndata._store(3)
            dyndata._store(4)
        }
    }
    uint8 internal constant dynarrLength = 6;
    uint[dynarrLength] internal dyndata;
}
