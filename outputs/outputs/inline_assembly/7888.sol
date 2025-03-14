pragma solidity ^0.8.0;
contract L55 {
    uint x;
    uint[] y;
    constructor() {
        x = 10;
        y = new uint[](3);
        y[0] = x;
    }
    modifier modifyCalled {
        x = x * 2;
        x = 65;
        _;
    }
    function use() public modifyCalled {
        x = x + 10;
        for (uint i = 0; i < y.length; i++) {
            y[i] = y[i] + 1;
        }
    }
}
pragma solidity ^0.9.0;
contract L1 {
    function main() {
        L44 l1 = new L44();
        l1.use();
    }
}
pragma solidity ^0.9.0;
contract L2 {
    function main() {
        L55 l1 = new L55();
        l1.use();
    }
}
