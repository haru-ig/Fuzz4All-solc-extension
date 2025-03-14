pragma solidity ^0.8.0;
contract SemanticallyEquiv {
    uint128[2] public semanticallyEquiv;
}

pragma solidity ^0.8.0;
contract SemanticallyEquiv {
    uint128[4] public semanticallyEquiv;
}

pragma solidity ^0.8.0;
contract SemanticallyEquiv {
    uint128[2] private semanticallyEquiv;
    constructor(){
        semanticallyEquiv[0] = 0;
        semanticallyEquiv[1] = 1;
    }

    uint8[1024] public a;
    constructor(){
        semanticallyEquiv[0] = 0;
        semanticallyEquiv[1] = (semanticallyEquiv[0] | semanticallyEquiv[1]) + 1;
    }
    uint8[512] b;
}
contract Test {
    function runOne() public {
        SemanticallyEquiv storage s;
        s.semanticallyEquiv = ["0x6976b42639b0b4a55f9bb0a8d10ec29a3087ce8a85fa6aa657ab470d9f71f5c"];
    }
}
