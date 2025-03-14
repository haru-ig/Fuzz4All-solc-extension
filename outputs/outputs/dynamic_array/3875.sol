pragma solidity ^0.8.0;
contract C {
    uint[][][3] storage b3;
    constructor () public {
        b3.push([[1, 2, 3], [4, 5, 6]]);
        require(3 == b3.length);
    }
}

pragma solidity >=0.7.0 ^0.8.0;
contract C {
    uint[][][2] b1;
    constructor (uint[][][2] memory arrayA) public {
        b1[0][0] = [2, 3, 4];
        b1[0][1] = [6, 7, 8];
        b1 = arrayA;
    }
}
