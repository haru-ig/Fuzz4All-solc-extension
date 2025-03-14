pragma solidity ^0.8.0;
contract MixedContactsExample506Again {
    function anotherOperation3() public {

        uint a = A507Storage__factory(0x7bA454037F0A9B705790D0AA143A6C89D081C922).a();

        anotherOperation4();

        bool b = A511Storage__factory(0xF38823183F5D6295A1657F15A85D19B1D15D6A75).b();

    }
}

pragma solidity ^0.8.0;
contract MixedContactsExample506AgainWithInline {
    uint A507Storage__factory__factoryCount;
    mapping (address => uint) internal __A507Storage_;

    constructor(uint numFactories) {
        A507Storage__factory__factoryCount = numFactories;
    }


    function create(address value) internal {
        __A507Storage__[0xf82d2E281a23f719209f4a68e4B71864B580AB69] = value;
    }

    function anotherOperation4() public {
        uint8 test;
    }
}
