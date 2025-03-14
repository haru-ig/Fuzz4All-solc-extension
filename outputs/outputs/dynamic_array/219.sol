pragma solidity ^0.8.0;
contract C7 {
    uint array[4];
    constructor(uint256 x) public {
        array = new uint[](4);
        array[0] = x;
    }
    function add(uint256 a, uint256 b) public pure returns (uint256) {
        return a + b;
    }
}

pragma solidity ^0.8.0;
contract C8 {
    event Add(uint);
    uint256[] p;
    uint[] q;

    function test_0() public {
        emit Add(p.push(C6(1)).value(1)(17));
        emit Add(p.push(C6(1)).value(2)(17));
        emit Add(p.push(4-1).value(1)(14));
        emit Add(p.push(3000).value(1)(16));
        emit Add(q.push(20).value(1)(41));
        emit Add(q.push(30).value(1)(41));
        emit Add(q.push(45).value(1)(41));
    }
}
