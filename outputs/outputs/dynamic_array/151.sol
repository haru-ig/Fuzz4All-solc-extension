pragma solidity ^0.8.0;
contract C2 {
    uint256[] public a;
    uint256 value;
    constructor() {
        a[1] = 3;
        a.push(42);
        a.push(42);
        a.push(42);
        a[3] = 0;
    }
}

pragma solidity ^0.8.0;
contract C2 {
    uint256[][] public a;
    uint256 value;
    constructor() {
        a[1] = new uint256[](3);
        a[2] = new uint256[](3);
    }
}

pragma solidity ^0.8.0;
contract C2 {
    uint256[][] public a;
    uint256 value;
    constructor() {
        a[1] = new uint256[](3);
        a.push(new uint256[](3));
    }
}

pragma solidity ^0.8.0;
contract C2 {
    uint256[][][] public a;
    uint256 value;
    constructor() {
        a[1] = new uint256[3][];
        a[2] = new uint256[3][];
    }
}
