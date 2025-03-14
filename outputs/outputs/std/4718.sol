pragma solidity ^0.8.0;
contract H {
    contract O {}
    contract Q {
        uint8 m;
        O o;
    }
}
contract H2 is H.Q {}
contract H3 is H2.O {}
contract H4 is H3.Q {}
contract E3 {
    contract X {
        O o;
    }
}
contract E4 is E3.X {}
contract H5 is H2.O.X {}
contract H6 is H.Q.X {}
contract H7 is H6 {
    contract Y {}
}
contract H8 is H5.Y {}
contract H9 is H.Q.X.Y {}
contract H10 is H7.Y {
    O o;
}
contract H11 is H.Q.X.Y.Z {}
contract H12 is H.Q.X.Y.Z.A {}
pragma experimental ABIEncoderV2;

pragma solidity ^0.8.0;


contract Array {
    mapping (uint => uint) private _count;
    mapping (uint => uint8) private _elements;

    function getCount() public view returns (uint count) {
        return _count[msg.sender];
    }
    function getCount2() public view returns (uint256 count) {
        return uint256(_count[msg.sender]);
    }
    function setCount(uint count) public onlyOwner {
        _count[msg.sender] = count;
    }
    function add(uint index, uint value) public returns (uint8 element) {
        if (index >= _count[msg.sender]) {
            element = 0xFF;
        } else {
            _count[msg.sender]++;
        }
        _elements[index] = value;
    }
    function get(uint index) public view returns (uint8 element) {
        if (index >= _count[msg.sender]) {
            element = 0xFF;
        } else {
            element = _elements[index];
        }
    }
    function toBytes() public view returns (bytes memory) {
        uint8[] memory v = new uint8[](10);
        v[0] = 0x01;
        v[1] = 0x02;
        v[2] = 0xFF;
        v[3] = 0x03;
        v[4] = 0x7F;
        v[5] = 0xFF;
        v[6] = 0x04;
        v[7] = 0xFF;
        v[8] = 0x05;
        v[9] = 0xFF;
        return abi.encode(v);
    }
    function toBytes2() public view returns (bytes32 memory) {
        uint8[] memory v = new uint8[](10);
        uint8 x = 0x7F;
        uint8 y = 0xFF;
        v[0] = x; v[1] = x
