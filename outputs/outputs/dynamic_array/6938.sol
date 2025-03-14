pragma solidity ^0.8.0;

contract Test2 {
    mapping(uint => uint[]) s2;
    constructor() public {
        Test2(uint256());
        s2[0] = [1];
    }
}

pragma solidity ^0.8.0;
contract Test {
    mapping(uint => uint[]) s2;
    mapping(uint => uint[])[] p2;
    uint q[1];
    function Test2() public {
        p2[0] = new uint[][](3);
        p2[0][0] = new uint[](1);
    }
    function Test(uint b) public {
        s2[q[b]] = p2[q[b]];
    }
}
contract Test2 {
    mapping(uint => uint[]) s2;
    mapping(uint => uint[])[] p2;
    uint q[1];
    constructor() {
        p2[q[0] + 1] = new uint[][](2);
        s2[0] = p2[q[0] + 1];
    }
    function Test(uint b) public {
        p2[q[b + 1]][0] = b;
        p2[q[b]][1] = b;
        s2[q[b]] = p2[q[b]];
    }
}

pragma solidity ^0.8.0;
contract Test {
    event NewUint(uint b);
    function Test2() public {
        uint[4] memory i;
        i[0] = 0;
        p2[0] = [i];
        emit NewUint(p2[0][0][0]);
    }
    uint[4] memory p2;
    mapping(uint => uint[])[] public p22;
    uint q[1];
    function Test(uint b) public {
        p22[0][] = new uint[](3);
        p22[0][0] = new uint[](1);
        p22[0][0][0] = b;
        p2[q[b] + 1] = p22[0];
        emit NewUint(p2[q[b]][0][0]);
    }
}
contract Test2 {
    mapping(uint => uint[]) s2;
    mapping(uint => uint[])[] p2;
    uint q[1];
    constructor() public {
        Test(uint(0));
        q[0] = 1;
