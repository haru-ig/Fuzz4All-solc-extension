pragma solidity ^0.8.0;
contract Mutate2 {
    uint private immutable a = 0x00000000000000000000003;
    uint private immutable b = 0x0000000000000000000000005;
    uint private immutable c = 0x000000000000000000000003;
}
contract Mutate3 {
    uint private immutable a = 0x0000000000000000000003;
    uint private immutable b = 0x00000000000000000000000005;
    uint private immutable c = 0xDEADBEEFEEADBEEF;
}
contract Mutate4 {
    uint a;
    uint b;
    function Mutate4() {
        b = 0x000000000000005000000000000003; a = 43217;
    }
}
