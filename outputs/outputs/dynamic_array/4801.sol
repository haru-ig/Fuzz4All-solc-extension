pragma solidity ^0.8.0;
contract Test4 {
    uint8[] storageData;
    modifier test4() {
        bytes memory str = abi.encodePacked(8);
        assembly {
            let s := mload(add(str, 0x20))
            store(0x40, s)
            s0 := mload(add(str, 0x40))
        }
        storageData = new uint8[](s0);
        uint8 a = storageData.push(100);
        uint8 b = storageData.push(1000);
        uint8 c = storageData.push(2000);
        storageData.push(3000);
        a;
        b;
        c;
        assembly {
            if gt(c, mload(add(storageData, 0x20))) then



            }
        }
        Test4.Test(true);
        Test4.Test2(true);
        a;
        b;
        c;
    }

    function Test() { Test(true); }

    function Test2() { Test2(true); }
}
