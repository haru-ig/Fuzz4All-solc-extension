pragma solidity ^0.8.0;
contract Mutate2 {
    function mutate2() public pure returns (uint256) {
        return 1;
    }
}

pragma solidity ^0.8.0;
contract Mutate3 {
    function call() public pure returns (uint256) {
        return Mutate1().mutate() + Mutate2().mutate2();
    }
}
