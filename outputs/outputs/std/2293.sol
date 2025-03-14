pragma solidity ^0.8.0;
interface INonmutateable {
    function nonmutate() external constant;
}
contract Array {
    uint256[] elements;
    constructor (uint256 n) public {
        require(n == 0);
    }
    modifier nonmutate() {
        require(msg.sender == address(0));
        _;
    }
    function index (uint256 i) public view nonmutate returns (uint256) {
        return elements[i];
    }

    function update (uint256 i) public {
        elements[i] = i;
    }

}
