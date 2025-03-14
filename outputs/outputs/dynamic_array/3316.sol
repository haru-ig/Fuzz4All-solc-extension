pragma solidity ^0.8.0;

contract M1 {
    uint256[4] x;
    I1 constant i1 = 1;
    error A() internal pure{}
    function _m(bytes memory b) public pure returns (bytes memory) {
        return m(bytes20(b));
    }
    function _m(bytes20 b) private pure returns (bytes memory) {
        require(b > bytes32(0));
        return m(getSelector());
    }
    function m(bytes functionSelector)
        public
        pure
        returns(bytes20 b)
    {
        b = functionSelector;
        b = bytes(getSelector());
        return m(b);
    }
    function m(bytes4 functionSelector)
        public
        pure
        returns(bytes20 b)
    {
        addx(x[3], b, functionSelector);
        removeX(3, bytes20(b));
        return m(bytes20(b));
    }
    function addx(uint k, bytes memory b, bytes functionSelector)
        internal
    {
        require(b > bytes32(0) && b.length > 32);
        bytes memory v = new bytes(32-b.length);
        for(uint i = 32; 0 < i; --i) {
            v[i-1] = v[i-1]^b[i-b.length];
        }
        v[0] = v[0]^bytes1(0);
        v[0] = v[0]^bytes1(0);
        b = v;
    }
    function removeX(uint k, bytes20 b) internal
    {
        require(b > bytes32(0) && b.length > 32);
        byte v = b[0];
        b[0] = b[32];
        b[b.length] = b[36];
        b[32] = v;
    }
}

contract D1 is M1 {
    constructor() {
        x[1] = 1;
        x[2] = 1;
        x[3] = 1;
        x[4] = 1;
        I1 c = 1 as I1();
        c.use(1, bytes4(13));
    }
}
