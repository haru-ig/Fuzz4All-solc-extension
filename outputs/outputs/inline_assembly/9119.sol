pragma solidity ^0.8.0;
contract C {
    function modify(uint x) public pure returns(uint) {
        x = 5;
        uint x = x + uint(uint.max(5) / 5);
        return x;
    }

    function getValue(uint x, uint y) public view returns(uint) {
        uint z = x / y;
        uint w = z * (uint(y) - 1);
        w = w + x * (uint(x + 1) - uint(w));
        uint w = w + y * (uint(w + 1) - uint(uint.max(y / 2) + 1));
        w = w + y * (uint(w + 1) - uint(uint.max(y * 3) + 1));
        w = w + y * (uint(w + 1) - uint(uint.max(y + 1) + 1));
        return w;
    }
}

pragma solidity ^0.8.0;
contract C {
    function getValue(uint a) public view returns(uint) {
        return a + 1;
    }
}
