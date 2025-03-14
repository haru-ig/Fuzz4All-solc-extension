pragma solidity ^0.8.0;
contract SemanticEquivalenceContract {
    function min(uint256 a, uint256 b) public pure returns (uint256)
    {
        return a < b? a : b;
    }
    function max(uint256 a, uint256 b) public pure returns (uint256)
    {
        return a < b? b : a;
    }
    function add(uint256 a, uint256 b) public pure returns (uint256)
    {
        uint256 t = a + b;
        if (t < a) {
            return a;
        } else {
            return t;
        }
    }
    function sub(uint256 a, uint256 b) public pure returns (uint256)
    {
        return a > b? a - b : -(a - b);
    }
    function mul(uint256 a, uint256 b) public pure returns (uint256)
    {
        return a * b;
    }
    function div(uint256 a, uint256 b) public pure returns (uint256)
    {
        uint256 t = a * b;
        require(b > 0);
        uint256 c = (a < b? a : b);
        return t / b;
    }
}
contract Solution4 is SemanticEquivalenceContract(){
    function mul(uint256 a, uint256 b) public pure returns (uint256) {
        uint256 t = a * b;
        (uint256 r) = t / 10**128;
        return a + b - r * 10**128;
    }
}
contract SemanticEquivalenceContractInterface {
    address public addr;
}

contract Test5 is SemanticEquivalenceContract{}
contract Solution5 is SemanticEquivalenceContractInterface{
    function min(uint256 a, uint256 b) public pure returns (uint256 _y) {
        _y = a < b? a : b;
    }
}
