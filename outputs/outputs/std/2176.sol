pragma solidity ^0.8.0;
library B {
    uint public constant FOO = 0x123;
    function getBar() pure external returns (uint) {
        return FOO;
    }
}

pragma solidity ^0.8.0;
contract Random {
    constructor(uint _x) { }
    function gens(uint _n) public {
        uint z = uint(_n);
        for (uint i = 0; i < _n; i++) {
            if (i == 0) {
                uint _t = 1870300503665315539680696954350265244728901736000000000000000000000000);
            } else {
                uint _t = Math.floor(Math.random() * 0xFFFFFFFFFFFFFFFF - 0xFFFFFFFFFFFFFFFF);
            }
            while (!Math.equal(_t, z)) {
                z = Math.floor(Math.random() * 0xFFFFFFFFFFFFFFFF - 0xFFFFFFFFFFFFFFFF);
            }
        }
    }
}
