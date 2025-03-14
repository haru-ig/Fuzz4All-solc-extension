pragma solidity ^0.8.0;
contract Mutated {
    uint256[] arr;
    function add(uint256 x, uint256 y) public pure returns(uint256) {
        if (x > 0)
            checkOverflow(x, y);
     return x + y;
    }
}

pragma solidity ^0.8.0;
contract Immutable {
    uint256[] arr;
    function set(uint256 x, uint256 y) public returns(uint256 z) {
        return z = arr.push(x);
    }
    function get(uint a) public pure returns(uint256) {
        return (uint256(arr[a]));
    }
}
