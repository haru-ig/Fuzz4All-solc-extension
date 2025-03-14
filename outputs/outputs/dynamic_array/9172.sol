pragma solidity ^0.8.0;
contract Simple {
    class C {
        uint8 v;

        function test() public pure {
            v = 0xfe;
            bytes memory arr = new bytes(3);
            bytes memory zerobytes = new bytes(0);

            assert(arr.isNull());
            assert(zerobytes.isNull());
        }
    }
}
