pragma solidity ^0.8.0;
contract Mutated {
    struct Data { uint x; uint y; }
    Data internal data;
    constructor() { data = Data(0, 0); }
    function run() public { }
}
contract Mutated2 {
    struct Data { bytes3 x; uint y; }
    Data internal data;
    constructor() { data = Data("hi", 0); }
}

pragma solidity ^0.8.0;
contract CallFallBack {
    struct Data { uint x; }
    Data internal data;
    constructor() { data = Data(0); }
    function run() public { }
}
contract CallFallBack2 {
    struct Data { bytes3 x; }
    Data internal data;
    constructor() { data = Data("hi"); }
}
