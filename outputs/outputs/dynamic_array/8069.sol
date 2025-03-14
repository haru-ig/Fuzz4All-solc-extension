pragma solidity ^0.8.0;
contract Test41MaliciousAddressArrayElement {
    address[] public addresses;
    address private maliciousAddress;

    event LogAddr(address _addr);
    event LogAddr(uint _counter, address _addr);
    event LogAddr(uint _counter,address _firstAddr1,address _firstAddr2);
    function f() public{
        uint j;
        uint i;
        uint tmp;
        maliciousAddress=404b7d850d893e259fb80e6c10943d22ca375e46;
        for(i=0;i<1000;i++) {
            addresses[i]=address(new Test41MaliciousAddressArrayElement());
        }
        addresses[11]=address(404B7d850d893E259fb80e6C10943D22ca375E46);
        for(j=1;j<200;j++) {
            addresses[11]=address(0x4222E040c8E9CCDE06DB7106b184A5E7d6c6981a);
            addresses[11]=address(555577DDcEe7987A19D5C57A3d3f6E8373B2b783);
            addresses[11]=address(21325353);
            addresses[11]=createAddressFromBytes(addressToBytes(message.sender, address(this)));
        }
        addresses[100]=(100*i);
        address[] memory empty = new address[](0, address(this));
        addresses[101]=addresses[addresses.length-2];
        ()internal {
            tmp = addresses[addresses.length-2];
            tmp = addresses[10];
        }
        addresses[102] = null;
    }
    function createAddressFromBytes(bytes memory input) internal pure returns (address) {
        bytes memory b = hexToBytes("0005000000000000000000000000000000000
