pragma solidity ^0.8.0;
contract Mutated {
    function mutateAddress(address _address) external pure returns (address) {
        uint256 newAddress = uint256(_address) + 1;
        return address(uint256(newAddress));
    }
    function mutateUint256(uint256 _value) external pure returns (uint256) {
        _value += 1;
        return _value;
    }
    function mutateString(string memory _string) external pure returns (string memory) {
        return _string + "!!";
    }

}
