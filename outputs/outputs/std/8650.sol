pragma solidity ^0.8.0;
contract MemoryExample
{
    uint16[] data;
    address addressWithoutEIP1193;

    event LogArrayChanged(uint16[] logs);


    function returnArrayWithoutEIP1193() external view returns(uint16[] memory){
        return data;
    }


    function testEIP1193Pass(address addressWithoutEIP1193) external view{
        emit LogArrayChanged(returnArrayWithoutEIP1193());
    }

    function getAddressWithoutEIP1193() public view returns (address){
        return addressWithoutEIP1193;
    }


    function initialize() public{
        emit LogArrayChanged(data);
        data = new uint16[](0);
    }
}
