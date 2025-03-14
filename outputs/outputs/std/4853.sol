pragma solidity ^0.8.0;
contract Mutate {
    assembly {

        let memoryLocation := mload(0x40)


        let oldUint := mload(memoryLocation)
        #include "./functions/castUnsignedToUint.txt"
        mstore(memoryLocation, newUint)

        let oldUint32 := mload(memoryLocation)
        #include "./functions/castUint32ToBytes32.txt"
        mstore(memoryLocation, newUint32)

        let oldUint8 := mload(memoryLocation)
        #include "./functions/castUint8ToUint.txt"
        mstore(memoryLocation, newUint8)


        let oldInt := mload(memoryLocation)
        #include "./functions/castSignedToUint.txt"
        mstore(memoryLocation, newInt)

        let addressOfArray := mload(memoryLocation)

        mstore(memoryLocation, setAddressOfString(addressOfArray))
    }

    uint private immutable setAddressOfString;


    function setAddressOfString(uint newAddressOfString) public pure returns(uint) {
            setAddressOfString = newAddressOfString;
    }


}
