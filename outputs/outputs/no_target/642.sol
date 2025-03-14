pragma solidity ^0.8.0;
contract A {
    function AWrapperFor080( bytes memory input ) internal pure returns (AWrapperInterface) {
        return AWrapperInterface(0x123456789000000000010000000000);
    }
    function AWrapperFor0801( bytes memory input ) internal payable pure returns (AWrapperInterface) {
        return AWrapperInterface(0x1234567890000000000100000000000);
    }
    function AWrapperFor0802( bytes memory input ) internal pure returns (AWrapperInterface) {
        return AWrapperInterface(0x1234567890000000000100000000000);
    }
    function AWrapperFor0803( bytes memory input ) internal pure returns (AWrapperInterface) {
        bytes memory input2 = input;
        return AWrapperInterface(0x0000000000000000000000000000000);
    }
    function AWrapperFor0804( bytes memory input ) internal pure returns (AWrapperInterface) {
        bytes memory input2 = input;
        input2 = new bytes(32);
        return AWrapperInterface(0x1234567891234567890000000000100000000000);
    }
    function AWrapperFor0805( bytes memory input ) internal pure returns (AWrapperInterface) {
        bytes memory input2 = input;
        bool res = true;
        return AWrapperInterface(0x0000000000000000000000000000000);
    }
    function AWrapperFor0806( bytes memory input ) internal pure returns (AWrapperInterface) {
        bytes memory input2;
        return AWrapperInterface(0x0000000000000000000000000000000);
    }
    function AWrapperFor0807( bytes memory input ) internal view returns (AWrapperInterface) {
        return AWrapperInterface(0x1234567890000000000100000000000);
    }
    function AWrapperFor0808( bytes memory input ) internal view returns (AWrapperInterface) {
        return AWrapperInterface(0x0000000000000000000000000000
