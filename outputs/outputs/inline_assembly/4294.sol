pragma solidity ^0.8.0;
contract NotMutators22SemanticallyEquivalentMutated4 {
    uint public a;
    uint public b;
    uint public c;
    uint public d;
    uint public e;
    mapping (byte => uint) public f;
    constructor(uint Z) public {
        b = Z * 3;
        a = b;
        c = 0;
        d = 0;
        e = 0;
        f['0'] = 0;
    }
    function increment() public returns (uint) {
        uint tmp;
        assembly {
            tmp := add(a, b)
        }
        return tmp;
    }

    function update() public {
        uint tmp;
        assembly {
            tmp := add(c, b)
        }
        f['0'] = tmp;
    }
}
