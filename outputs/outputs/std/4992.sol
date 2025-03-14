pragma solidity ^0.8.0;
contract Array {
    function getMin(uint x, uint y) internal pure returns (uint) {
        return x < y? x : y;
    }
    function getMax(uint x, uint y) internal pure returns (uint) {
        return x < y? y : x;
    }
    function getSum(uint x, uint y) internal pure returns (uint) {
        uint z = x + y;
        return z >= x? z : x;
    }
    function getAt(uint[] memory a, uint index) internal pure returns (uint) {
        if(a.length > 0)
            return a[index];
        else
            return 0;
    }
    function setAt(uint[] memory a, uint index, uint value) internal {
        a[index] = value;
    }
}

pragma solidity ^0.8.0;
contract Multiprecision {
    function mod(uint a, uint b) internal pure returns (uint) {
        require(b!= 0, "Mod by zero!");
        return a % b;
    }
    function mul(uint a, uint b) internal pure returns (uint) {
        require(b!= 0, "Mul by zero!");
        return a * b;
    }
    function div(uint a, uint b) internal pure returns (uint) {
        require(b!= 0, "Div by zero!");
        return a / b;
    }
    function sub(uint a, uint b) internal pure returns (uint) {
        require(b <= a, "Sub with overflow!");
        return a - b;
    }
    function add(uint a, uint b) internal pure returns (uint) {
        require(b <= a + 2**256 - 1, "Add with overflow!");
        return a + b;
    }
}
