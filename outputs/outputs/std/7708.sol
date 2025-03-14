pragma solidity ^0.8.0;
contract EquivalentMutated19 {
    uint[5] a;
    constructor(uint[5] memory c) {
        a = c;
        a = [2, 4, 6, 8, 10];
    }
}
pragma solidity ^0.8.0;
contract TrivialTest13 {
    pragma abicoder v2;
    constructor(uint256 c) {assembly {c = mul(c, 3)}}
    function pureMethod() public pure {}
}
pragma solidity ^0.8.0;
contract TrivialTest14 {
    pragma abicoder v2;
    constructor(uint256 c) {assembly {c = div(c, 3)}}
    function pureMethod() public pure {}
}
contract TrivialTest15 {
    uint[16] memory a;
    constructor() { assembly {store(0, a)}}
    function pureMethod() public pure {}
}
pragma solidity ^0.8.0;
contract TrivialTest16 {
    uint[16] memory a;
    constructor() { assembly {store(0, a)}}
    function pureMethod() public pure {}
}
pragma solidity ^0.8.0;
contract TrivialTest17 {
    uint[16] c;
    constructor() { assembly {c = a'}}
    function pureMethod() public pure {}
    uint[16] get() public view returns (uint[16] memory) {
        return c;
    }
    function set(uint[16] memory _a) public {
        c = _a;
    }
}
pragma solidity ^0.8.0;
contract TrivialTest18 {
    uint[16] memory a[13];
    constructor() { assembly {store(0, a)}}
    function pureMethod() public pure {}
    function get() public view returns (uint[13] memory) {
        uint[13] memory x;
        return x;
    }
}
pragma solidity ^0.8.0;
contract TrivialTest19 {
    uint[16] memory a[13];
    uint[13] memory b;
    constructor(uint[16] memory _a, uint[13] memory _b) {
        a = _a;
        b = _b;
    }
    function pureMethod() public pure {}
    function get() public view returns (uint[13] memory) {
        return b;
    }
    function set(uint[13]) public {

    }
}
pragma solidity ^0.8.0;
contract Test20 {
    uint[16] memory a;
    uint[13] memory b;
    constructor(uint[16] memory _a, uint[13] memory _b) {
        a = _a;
        b = _b;
    }
    function pureMethod() public pure {}
    function aget() public view returns (uint[13] memory) {
        return b;
    }
    function set(uint[13] memory) public {

    }
}
