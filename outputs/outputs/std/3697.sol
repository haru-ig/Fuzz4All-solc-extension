pragma solidity ^0.8.0;
contract Solidity1 {
    uint256 a;
    uint256 b;
    uint256 c;
    function setVariables(uint256 _a, uint256 _b) pure public {
        a = _a;
        b = _b;
    }
    function add() public pure {
        c = Math.add(a, b);
        b = Math.mul(b, 2);
    }
    function mul() public pure {
        d = Math.mul(c, b);
    }
}

pragma solidity ^0.8.0;
contract Solidity2 {
    uint256 a;
    uint256 b;
    uint256 c;
    function setVariables(uint256 _a, uint256 _b) pure public {
        a = _a;
        b = _b;
    }
    function add() public pure {
        c = a + b;
        b *= 2;
    }
    function mul() public pure {
        d = c * b;
    }
}

pragma solidity ^0.8.0;
contract Array {
    uint[] public x;
    uint xSize;
    function push() public pure {
        x.push(0);
    }
    function pop() public pure {
        uint value;
        require(xSize > 0);
        value = x[xSize - 1];
        xSize--;
        delete x[xSize];
        return value;
    }
    function sum() public pure returns (uint) {
        uint value = 0;
        for (uint i = 0; i < xSize; ++i) {
            value = Math.add(value, x[i]);
        }
        return value;
    }
    function min() public pure returns (uint) {
        uint value = x[0];
        for (uint i = 1; i < xSize; ++i) {
            value = Math.min(value, x[i]);
        }
        return value;
    }
    modifier setSize(uint size) {
        xSize = size;
    }
}
/* Please create a semantically
