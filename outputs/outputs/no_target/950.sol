pragma solidity ^0.8.0;
contract SemanticMutation9 {

    modifier only2() {
        uint8 a;
        (a, ) = 0x20000000000000000000000000000000000000000000000000000000000000;
        (a, ) = 0x200000000000000000000000000000000000000000000000000000000000001;
        if (a!= 2) {
            revert();
        }
        _;
    }

    function test0()
        public
        only2
    {
    }
}
