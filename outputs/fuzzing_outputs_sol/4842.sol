pragma solidity ^0.8.0;
contract Mutator {
    function fallback() public payable returns (uint256) {
        revert("Wrong");
    }
}
contract Reverter {
    constructor () {
        revert("No fallback is defined.");
    }
}

pragma solidity ^0.8.0;
contract Mutator {
    function create(uint256 x) public pure returns (uint256) {
        return x;
    }
    function fallback() public payable {
    }
    function get() public view returns (uint256){
        return create(create(create(create(0))));
    }
}
contract Reverter {
    constructor () {
        revert("No fallback is defined.");
    }
}
