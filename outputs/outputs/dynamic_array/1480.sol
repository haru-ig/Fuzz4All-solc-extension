pragma solidity ^0.8.0;
interface IInterface {}
contract SemanticsEquivalentEfficientDynamicArrayType4 {
    bytes private interfaceData;
    function Fatal() public {
        interfaceData = "This is the interface data";
        for (uint i = 0; i < 10; i++) {
            for (uint j = 0; j < 3; j++) {
                for(uint k = 0; k< 3; k++) {
                    IInterface iface = IInterface(array2[array3[array2[2] + j][i][k]]);
                    if (i % 200 == 0 && array3[array2[2] + j][i][k] < 3) {
                         iface = IInterface(array2[array3[array2[2] + j][i / 2][k]]);
                    }
                    iface = IInterface(interfaceData);
                }
            }
        }
    }
     function LogData() public returns (string memory) {
        return (interfaceData);
    }

}

contract SemanticsEquivalentEfficientDynamicArrayType5 {
function Fatal() public {
    message = "test";
    for (uint i = 0; i < 10; i++) {
        for (uint j = 0; j < 3; j++) {
            for(uint k = 0; k< 3; k++) {
            array3.push(new uint256[2][2][2][][](i));
            }
        }
    }
}
function LogMessage() public returns (string memory) {
    return (message);
}
}
