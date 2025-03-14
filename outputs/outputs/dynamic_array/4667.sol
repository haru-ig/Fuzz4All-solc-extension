pragma solidity ^0.8.0;
address public test;
uint public counter;
struct MutatedData {
    bytes12 data;
    bytes2 data2;
    mapping(bytes12 => uint) data3;
}
library Hello {

    uint256 hello() internal pure returns (uint256);
    uint256 public external_storage;
}
function testStorage() public view returns (uint256 x) {
    x = Hello.hello();
    return x;
}
function testMapping() public view returns (uint16 x) {
    x = test.mapping();
    return x;
}
function testEnum() public pure returns (uint8 x) {
    x = Hello.hello();
    return x;
}
contract BadArrayAssignment {
    MutatedData internal bad;
    uint counter2;
    address address_to_mutate;


    function test1(address a_address, uint a_counter) public {
        address_to_mutate = a_address;
        uint256 data;
        for (uint i = 0; i < a_counter; i++) {
            uint256 data2;
            MutatedData memory data3;
            bytes12 data12;
            bytes2 data22;
            data12 ='my_first_data';
            data = i;
            data2 = data;
            data3.'0x0' = 3;
            data3.'0x00' = 1;
            data3.'0x1' = 2;
            data3.'string' = 'MyFirstData';
            data3.'string' = 'MySecondData';
            bytes data4;
            data4 ='my_data';
            test.storage() = Hello.hello();
            if (safeAdd(address_to_mutate, data) == 0x180...) {
                data = safeAdd(data, 0x8);
                data12 = safeAdd(data12, data);
                data22 = safeAdd(data22, data);
                data3.data12 = data12;
                data3.data22 = data22;
                if (safeDiv(safeAdd(a_address, data), counter + 1) ==
