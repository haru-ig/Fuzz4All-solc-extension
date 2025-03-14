pragma solidity ^0.8.0;
contract SM {
    uint[] oldMem;
    constructor(uint[] memory oldMem) {
        this.oldMem = oldMem;
    }
    function f(uint[] memory newMem) {
        mem = oldMem;
    }
}
contract SAA {
    uint[] oldMem;
    constructor(uint[] memory oldMem) {
        this.oldMem = oldMem;
    }
    function f(uint[] memory newMem) {
        oldMem = newMem;
    }
}

pragma solidity ^0.8.0;
contract SM {
    uint[2][2] mem;
}
contract SAA {
    uint[2][2] mem;
}
