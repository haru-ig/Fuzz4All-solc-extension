pragma solidity ^0.8.0;
i iface1 = i(0x155fa271891C942F9a62c8f555cE5B980c6c0A14);
i iface2 = i(0x155fa271891C942F9a62c8f555cE5B980c6c0A14);
function f() public returns(uint[] memory) {
    uint[] memory result = new uint[](2);
    iface1.m(0);
    iface2.m(0);
    result[0] = iface1.m(0);
    result[1] = iface2.m(0);
    return result;
}
