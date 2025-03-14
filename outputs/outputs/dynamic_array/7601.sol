pragma solidity ^0.8.0;
contract Test14SemanticallyEquivalent {
    uint A;
    uint[2][2] storage A2;
    bytes1 Abytes;

    constructor() public {
        A2 = [
            [0,0],
            [0,0]
        ];

        Abytes = 0x01;
    }

    function a() public {
        Abytes = Abytes | 0xFF;
    }

    function b() public {
        A2 = Abytes;
        a();
        if (A2!= [1,1])
            revert();
    }
}
