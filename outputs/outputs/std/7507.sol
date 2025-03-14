pragma solidity ^0.8.0;
contract Mutate3 {
    address public newAddress;
    function setAddress(address _newAddress) public {
        newAddress = _newAddress;
    }

    function mutate(address _newAddress) public returns (uint256) {
        address _newAddrs[] = newAddress.call{value: 10 * 10**decimals}("");
        newAddress = _newAddrs[0];
        uint a = 4;
        a += 3;
        return 254;
    }
}
