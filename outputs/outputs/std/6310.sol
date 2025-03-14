pragma solidity ^0.8.0;
contract Mutate {
    address[] storedAddresses;

    function getValue(uint256 index) public returns (uint256, uint256) {
        return (storedAddresses.length, storedAddresses[index]);
    }

    function mutateAddresses() public {

        storedAddresses.push(address(this));
        storedAddresses.push(address(this));
    }
}
*/
