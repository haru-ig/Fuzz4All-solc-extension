pragma solidity ^0.8.0;
contract Test832 {
    address y = 0xaBCdEeF00d5678910876789abCDEF123ef69f470;
    function test() public payable {
        uint8[] memory z = new uint8[](1);
        z[0] = 0x52;
        y = z[0];
    }
}
