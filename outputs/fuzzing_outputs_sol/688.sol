pragma solidity ^0.8.0;
contract Modded
{
    address payable newAddress;
    function setAddress(address payable _newAddress) public {
        (, ) = payable(newAddress).call{value: 0}(abi.encodeWithSignature("incrementBy(uint)", 1));
        require(storedData == 0, "Data not modified");
        newAddress = _newAddress;
    }
    uint storedData;
    function incrementBy(uint _amount) public returns (uint) {
        storedData = storedData + _amount;
        uint output = storedData;

        (, ) = newAddress.call{value: 0}(abi.encodeWithSignature("multiply(uint,uint)", input, _amount));
        require(storedData == output, "Data not modified");
        return output;
    }
}
