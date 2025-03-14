pragma solidity ^0.8.0;
contract SemanticMutated {
    function get(uint z) public pure {
        uint x = 1;
        uint y = 3;
        x = y * z;
    }
}
contract HighLevelMutated {
    function get(uint x, uint y, uint z) public pure returns (uint) {
        uint x = x * z;
        uint x = x + y;
        return x;
    }
}

pragma solidity ^0.8.0;
contract SemanticReturn {
    function get(uint z) public pure returns (uint) {
        uint x = 1;
        uint y = 3;
        x = y * z;
        return x;
    }
}
contract HighLevelReturn {
    function get(uint x, uint y, uint z) public pure returns (uint) {
        uint x = x * z;
        uint x = x + y;
        return x;
    }
}

pragma solidity ^0.8.0;
contract ReturnSame {
    function get(uint z) public pure returns (uint z2) {
        uint x = 1;
        uint y = 3;
        x = y * z;
        z2 += x;
        z2 = 0;
        return;
    }
}
contract ReturnDifferent {
    function get(uint z) public pure returns (uint z2) {
        uint x = 1;
        uint y = 3;
        x = y * z;
        return x;
    }
}
contract Caller {
    function test(uint x, uint y, uint z) public returns (uint z2) {
        z2 = get(x, z);
        z2 = z
