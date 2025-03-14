pragma solidity ^0.8.0;
contract RestrictedMutator4 {
    uint s = 0;
    constructor () public {
        uint a = s++;
        uint b = s;
        b = s++;
        uint c = s;
    }
}
contract RestrictedMutator5 {
    address a;
    address b;
    uint s;
    uint d = 0;
    constructor () public {
        s = 1;
        a = b;
        b = address(0x7654);
        a.call.value(s.add(1))("");
        b.call.value(s.add(10))("");
    }
}

pragma solidity ^0.8.0;
