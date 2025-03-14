pragma solidity ^0.8.0;
contract L25 {
    uint x;
    constructor() {
        x = 10;
    }
    uint constant M = 3;
    function modifyCalled() public {
        x = x + M;
        x = x + 1;
        x = x * 2;
    }
}

pragma solidity ^0.8.0;
contract L25 {
    uint x;
    constructor() {
        x = 10;
    }
    uint constant M = 3;
    uint constant N = 40;
    function modifyCalled() public {
        x = x + 1;
        x = x * 2;
        x = x + 5;
        for (int index = 1; index <= N; index++) {
            x = x * 2;
        }
        M = M + 1;
        M;
        uint constant m = x / 2 + x;
        M = M + x;
    }
}
contract L25 {
    uint x;
    constructor() {
        x = 10;
    }
    uint constant M = 3;
    uint constant N = 20;
    uint constant B;
    uint constant C;
    function modifyCalled() public {
        _modify();
    }
    function _modify() private {
        B = B + 1;
        B = B * 2;
        C = C + B;
        C = C * 3;
        B = C + B * 1;
        B = B * 2;
    }
}
