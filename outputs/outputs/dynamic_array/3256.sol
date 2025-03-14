pragma solidity ^0.8.0;
contract Mut8 {
    Mut7 storage s1 = Mut7(0x5092f132a18fe04966db3266f51d3f88b824d9458f9802033ac3f5f1498aefb6);
    Mut7 storage s2 = Mut7(0x0618b66019816cc5ab240aa7e506966f6486cb65877c8a06829a84010a3a224e);
    Mut7 storage s3 = Mut7(0x9a49070965f4be148f149a6788f2a8347926631958dc0e727462b66fa9b7d841);

    function setS() public {
        setS(s2);
    }

    function setS2() public {
        setS(s3);
    }

    function setS3() public {
        setS(s2);
    }

    function setS(Mut7 memory v2) public {
        s1.setB(keccak256(abi.encodePacked(s2.b(keccak256("a"))))), s2.b(keccak256("aa")));
        s2.setB(keccak256(abi.encodePacked(s2.b(keccak256("ab"))))), s3.b(keccak256("ab")));
    }

    function b(bytes32 key) constant internal returns (B v) {
        v = B(_storage[key]);
    }
}
/* After mutation, you should expect these bytes to return the expected result
0x5092f132a18fe04966db3266f51d3f88b824d9458f9802033ac3f5f1498aefb6
0xabc83d888d2cf5b1770b15e7beff89632cc2711d4e5fe1d42a91abbd5a990831
0x
