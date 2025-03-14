pragma solidity ^0.8.0;
contract EquivalentMutated {
    string[2] c;
    constructor(string memory a) public { c[0] = a}
    function mutate() public {
        bytes32 _;
        a[2] = a[1];
        a[3] = a[0];
        a[4] = a[0];
    }
}

pragma solidity ^0.8.0;
contract EquivalentMutated {
    bytes32[4] a;
    constructor(string memory s) public { a[0] = s }
    function mutate() public {
        bytes32 _;
        a[1] = a[3];
        a[1] = a[1];
        a[2] = a[2];
        a[2] = a[1];
    }
}


pragma solidity ^0.8.0;
contract EquivalentMutated {
    bytes8[2] a;
    constructor(string memory s) public { a[0] = s }
    function mutate() public {
        bytes32 _;
        a[1] = a[3];
        a[1] = a[1];
        a[2] = a[2];
        a[2] = a[1];
    }
}

pragma solidity ^0.8.0;
contract EquivalentMutated2 {
    bytes32[2] a;
    uint[2] b;
    constructor(string memory s) public { a[0] = s }
    function mutate() public {
        bytes32 _;
        a[1] = a[3];
        a[1] = a[1];
        b["a"] = 2;
        b["b"] = 4;
    }
}

pragma solidity ^0.8.0;
contract AddressTests {
    bytes32[2] a;
    uint[2] b;
    function setup() public {}
    constructor(uint[2][2] memory i) public { b = i }
    function test() public {
        a[0] = bytes32(address(a32(a32(address(this)))), a32(a32(address(a32(address(a32(address(a32(address(this))))))), a32(a32(address(a32(address(a32(address(a32(address(this))))))))
