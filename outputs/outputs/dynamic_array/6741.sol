pragma solidity ^0.8.0;

contract T2T4_contract_calldata_array {
    function test() public returns (bool) {
        bytes memory value;
        T0F9C_call_data_array memory storage a;
        a.empty.push(0x617373657274);
        a[0].push(0x617373657274);
        a.emptyArray = new bytes[](0);
        a.emptyArray2 = new bytes[](0);
        a.addresses = new address[](0);
        a[1].push(0x617373657274);
        for (uint i = 1; i < 100000; i++) {
            a.addresses.push(address(uint160(i)));
        }
        a[50000].push(0x617373657274);
        a.val = 0xAA0AAA55;
        for (uint i = 0; i < 2; i++) {
            a.call1[i] = a[i].call1Empty;
        }
        a[1].push(0x617373657274);
        a.addresses = new address[](0);
        for (uint j = 0; j < 100000; j++) {
            for (uint k = 0; k < 100000000; k++) {
                if (a[0][j]!= a.empty.at(i)) {
                    return false;
                }
            }
        }
        return true;
    }
}
