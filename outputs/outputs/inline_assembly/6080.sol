pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalentAssemblyExample10 {
    address owner;
    bool private constant isInitialized;
    Immutable[] memory ims;
    mapping(address => Immutable) memory imMap;
    map[] memory mgs;
    mapping(uint => map[]) mutable state;
    constructor(address _owner) public {
        owner = _owner;
        state[0] = mgs;
        state[1] = state[0];
        imMap[address(this)] = ims[9][0];
        imMap[address(this)].x = 3;
    }
    function main() public returns (bytes memory) {
        uint256 i = 0;
        state[i][0][0] = imMap[address(this)] = ims[i][0];
        state[i][0][0].x = 2;
        i = i + 1;
        imMap[address(this)].x = 3;
        return abi.encode(state[i]);
    }
    receive() external payable {}
}
