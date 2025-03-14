pragma solidity ^0.8.0;
contract NewEquivalent
{
    struct Data
    {
        mapping(address=>uint8) numToBool;
        uint8[] arr;
        uint public sum;
    }
    function makeDataSet() public returns(address[] memory)
    {
        uint sum = 2;
        uint8[] memory arr = new uint8[](2);
        arr[0] = 100;
        arr[1] = 150;
        sum += 2;
        return new address[](2);
    }
    function makeData() public returns(address)
    {
        Data memory data;
        data.numToBool[this] = uint8(true);
        data.sum = sum;
        data.arr[0] = 100;
        data.arr[1] = 200;
        return this;
    }
    function getArray() public returns(uint[4] memory)
    {
        return this.create2(uint8(false), new uint8[](0), 0);
    }
    function test() public {
        uint[] memory arr = this.create2(
            uint8(0),
            new uint8[](3),
            uint256(uint(this)).toString()
        );
        emit Test(arr);
    }
    function Test(uint arr[2]) public {
        require(arr[0] > uint(3) && arr[1] < 4, "Wrong result");
        emit Result(this, arr);
    }
    mapping(address=>bytes32 public);
    function create2(bool isString, uint[] memory elements, string memory s3) public pure returns(uint[] memory, uint32) {
        if (isAddress(s3)) {
            return (new uint[](0));
        }
        if (isAddress(this)) {
            return (new uint[](0));
        }
        if (elements.length is 0 && s3 == "") {
            return (new uint[](0));
        }
        uint32 length;
        length = elements.length;
        uint[] memory _elements = new uint[](elements.length + 1);
        for (uint i; i <= length - 1; i++) {
            _elements[i] = elements[i];
        }
        _elements[length] = s3;
        return (_elements, length + 1);
    }
    function isAddress(bytes32 b) internal pure returns(bool) {
        bytes32 hexBlob = hex"3045022100f22607d196da392c26da7a2b3e29a9ec124070509641b746734bc3580550220147de8a3c0f810bb6a2365886e772e4d
