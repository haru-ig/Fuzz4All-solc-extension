pragma solidity ^0.8.0;
contract Mutate6 {
    uint32 x;
}

pragma solidity ^0.8.0;
contract Mutate7 {
    uint32 x;
}
program Test {
    using Mutate in Mutate5;
    using Mutate in Mutate6;
    using Mutate7 in Mutate5;
    function test(uint32 a) public view returns (uint32 b) {
        Mutate.increment(a);
        b = a + x;
    }

    function test(uint32 a) public view {
        a.increment();
    }
}

pragma solidity >=0.7.0 <0.9.0;
