pragma solidity ^0.8.0;
contract Test23 {
    function f() public pure {
        return (uint[]([1]));
    }
}

pragma solidity ^0.8.0;

contract Test26 {

    function f() public pure returns(uint256) {
        uint256 n;
        return (uint256)[][];
    }
}
