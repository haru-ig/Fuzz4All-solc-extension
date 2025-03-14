pragma solidity ^0.8.0;
contract InlineAssembly{
    function test() public pure returns(string memory text) {
        bytes memory buf = '';
        buf.fill(_prefix.data);
        string memory str = string(buf);
        buf.fill(byte(0));
        if (block.timestamp < _timestamp) {
            bytes1 slot1;
            bytes1 slot2;
            assembly {
                slot1 := mload(0x40)
                slot2 := mload(0x41)
            }
            buf.fill(_prefix.data);
            string memory str = string(buf);
            buf.fill(slot1);
            buf.fill(slot2);
            text = bytesToString(slot1, slot2);
            buf.fill(byte(0));
        } else {
            buf.fill(slot1);
            buf.fill(slot2);
            text = bytesToString(slot1, slot2);
            buf.fill(byte(0));
        }
    }

    function bytesToString(bytes memory _prefix, bytes memory _suffix)
      private pure
      returns (string memory)
    {
        bytes memory buf = _prefix;
        for (uint i = 0; i < _prefix.length; i++) {
            buf.fill(byte(0));
        }

        string memory str = string(buf);
        buf.fill(_suffix);
        for (uint i = 0; i < _suffix.length; i++) {
            bytes1 slot2 = byte(0);
            bytes1 slot1 = buf.load(i);
            if (buf.length == i + 1) {
                slot2 = _suffix.load(0);
            }

            buf.fill(_prefix.data);
            string memory temp = string(buf);
            buf.fill(slot2);
            buf.fill(slot1);
            str = TempString(str, temp);
            buf.fill(slot2);
            buf.fill(slot1);
        }

        return str;
    }

    function TempString(string memory _prefix, string memory _suffix) private pure returns(string memory) {
        return string(_prefix) + _suffix;
    }


      address _prefix = (address(1342469883)!= 0)
      ? address(0x627306090abab3a6e1400e9345bc60c78a8bef57)
        : address(0xffffffec0000000000000000000000000000000000);

      bytes1 slot1;
      bytes1 slot2;
    uint _timestamp = block.timestamp;
    assembly {
        slot1 := mload(0x40)
        slot2 := m
