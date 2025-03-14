pragma solidity ^0.8.0;
contract ExistingContract {
    uint private constant arrayLength = 17;
    uint private constant arrayStart = 0x1231241231;
    uint public array;
    uint public arrayStart1;
    address public address;
    constructor() {
            arrayStart1 = arrayStart + address.value * 10;
            require(arrayStart1 <= arrayLength);
            array = arrayStart1;
    }

    function getAverage() view public returns (uint256) {
        return average(array);
    }

    function changeLength(uint256 newLength) public {
        require((newLength >= 1) && (newLength <= 2147483647));
        uint start = newLength < 2147483646? newLength : 2147483645;
        uint end = start + (newLength < 2147483646);
        require(start < end);
        address lastArrayAddress = bytesToAddress(new uint256[](0)[getArraySize()]);
        uint size1 = start + address.value + end;
        uint size2 = getArraySize();
        require(array <= size1);
        require(lastArrayAddress <= size2);
        require(lastArrayAddress < size2);
        require(size2 > size1);
        for (uint ix = start; ix < end; ++ix) {
            uint256 num = bytesToUint(getArrayAddress(ix));
            bytes memory bytes = new bytes(27);
            uint256 bytesLength = encoding(ix, bytes);
            bytes[0...bytesLength] = bytesToUint(getArrayAddress(ix));
            require(bytes.length == bytesLength);
            require(new uint256[](0)[size2 - getArraySize()] == bytesToUint(lastArrayAddress));
            setArrayAddress(ix, bytes);
            lastArrayAddress = bytesToAddress(new uint256[](0)[size2]);
        }
        deleteArrayAddress(address.value);
        bytes memory s = new bytes(750);
        uint256 bytesLength = encoding(getArrayLength(), s);
        s[0] = 0x11;
        s[1] = 0x22;
        s[2] = 0x33;
        setArrayAddress(getArrayLength(), s.sub(0x222222222222222222211111111222222222222
