pragma solidity ^0.8.0;
contract MutatedBlock2Mutation86 {
    uint internal _x;
    uint internal _y;
    uint internal _a;
    uint internal _b;
    function test2() public returns (uint) {
        return block.gaslimit;
    }
}

pragma solidity ^0.8.0;
contract MutatedBlock2Mutation87 {
    struct Stash { uint a; uint b; uint c; uint d; }
    Stash internal _x;
    function test2() public returns (uint) {
        uint temp = block.number;
        _x.a += 10;
        _x.b = block.number + block.difficulty;
        _x.d = block.number & 1;
        return temp - _x.b;
    }
}
pragma solidity ^0.8.0;
contract MutatedBlock2Mutation88 {
    Stash internal _x;
    uint internal _a;
    function test() view public returns (uint) {
        return _x.a;
    }
}
pragma solidity ^0.8.0;
contract MutatedBlock2Mutation89 {
    Stash internal _x;
    uint internal _a;
    function test() view public returns (uint) {
        return _x.a;
    }
}
pragma solidity ^0.8.0;
interface MutatedBlock2Mutation90 {
    function test() public returns (uint);
}
pragma solidity ^0.8.0;
contract MutatedBlock2Mutation91 {
    uint internal _a;
    address internal _b;
    function test2() public payable returns (uint) {
        return  _a || (address(0).call.value(msg.value)());
    }
}
pragma solidity ^0.8.0;
contract MutatedBlock2Mutation92 {
    uint internal _x;
    uint internal _y;
    function test2() public returns (uint) {
        return _x = block.number + block.difficulty;
    }
}
pragma solidity ^0.8.0;
contract MutatedBlock2Mutation93 {
    uint internal _x;
    uint internal _y;
    uint internal _z;
    function test2() public returns (uint) {
        return block.gasprice < block.timestamp? block.timestamp : block.difficulty;
    }
}
pragma solidity ^0.8
