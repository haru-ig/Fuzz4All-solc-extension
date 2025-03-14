pragma solidity ^0.8.0;
contract Test {
    function main() public {
        MutatedBytes memory test = MutatedBytes(0);
        arrayOfBytes_current = bytes(
            abi.encodePacked(
                test.address()
            ),
            arrayWithOneItem()
        );


        mappingOfAddressToUint[test.address()] = 0;
    }

    function arrayWithOneItem() public pure returns(bytes memory) {
        bytes memory array = new bytes(1);
        array[0] = 1;
        return array;
    }
}
