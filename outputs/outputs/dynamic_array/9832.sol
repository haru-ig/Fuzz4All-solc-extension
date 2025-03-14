pragma solidity ^0.8.0;
contract SemanticTest_v4b {
    uint[] x = [0];

    function assign0(uint i) public {
        x[i] = 0x1000;
    }
    function assign1(uint i, uint j) public {
        x[j] = 0x2001;
        x[i] = x[i] & j;
    }
    function assign2() public {
        x[x.length] = 0xc000;
        uint l = x.length;
        for (uint j = 0; j <= l; j++) {
            x.length = 33;
            x[0] = 0xf00e004900;
        }
    }

}






pragma solidity ^0.8.0;
contract SemanticTest_v5b {

}
