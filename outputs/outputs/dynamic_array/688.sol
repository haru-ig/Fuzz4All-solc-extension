pragma solidity ^0.8.0;
contract test271 {
    uint[] c;
    struct s {
        uint _e;
    }
    constructor() public {
        c = new s[](4);
        for (uint i = 0; i < 4; i++) c[i]._e = i;
    }
    function test() public returns (bool) {
        c[3] = 2;
        return false;
    }
}
pragma solidity ^0.8.0;
contract test272 {
    uint[100] a;
    struct s {
        uint _e;
    }
    constructor() public {
        for (uint i = 0; i < a.length; i++) a[i] = i;
    }
    function test() public returns (bool) {
        uint[100] memory b = new uint[](a.length);
        a = b;
        return false;
    }
}
pragma solidity ^0.8.0;
contract test273 {
    uint[100] memory a;
    struct s {
        uint _e;
    }
    constructor() public {
        for (uint i = 0; i < a.length; i++) a[i] = i;
    }
    function test() public returns (bool) {
        uint[100] memory b = new uint[](a.length);
        a = b;
        b[3] = 2;
        return false;
    }
}
pragma solidity ^0.8.0;
contract test274 {
    uint[100] memory a;
    uint256[] nonEmptyFields;
    constructor(uint256[] memory _nonEmptyFields) public
    {
        nonEmptyFields = _nonEmptyFields;
    }
    function test() public returns (bool) {
        uint256[] memory b = new uint256[](nonEmptyFields.length);
        a = b;
        b[3] = nonEmptyFields[3];
        return false;
    }
}
pragma solidity ^0.8.0;
contract test275 {
    struct s {
        uint _e;
    }
    uint[100] memory a;
    s[] nonEmptyElements;
    constructor(s[] memory _nonEmptyElements) public
    {
        nonEmptyElements = _nonEmptyElements;
    }
    function test() public returns (bool) {
