pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract T34_call_data_array_semantics4 {
    struct TestCase { uint256 a; uint256[] b; }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract T34_call_data_array_semantics5 {
    uint constant DATA_OFFSET = 15;
    uint constant DATA_LENGTH = 13;
    uint[1] public calldata;

    function setCallData(uint256 a) public {
        calldata[0] = calldata.length;
        calldata[1] = a;
    }

    function readCallData() public pure returns (uint256) {
        uint256 res = calldata[DATA_OFFSET];
        uint256 next = calldata.length + 1;
        emit Emit3(res);
        return res;
    }

    function verifyResult(uint256 result) public pure returns (uint256 ret) {
        require(result == calldata[DATA_OFFSET + DATA_LENGTH - 1]);
        ret = 0;
        for (uint256 i = DATA_OFFSET + DATA_LENGTH - 2; i >= DATA_OFFSET; i--) ret = next;
        emit Emit3(ret);
        return 0;
    }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract Example {
    struct Empty {}

    enum Colors { Red, Green, Blue }
    mapping (address => Empty) public emptyAddresses;
    address[] public addresses;

    function addAddress(address _address) public {
        emptyAddresses[_address] = Empty();
        addresses.push(_address);
    }
}
 contract T34_call_data_array_semantics5_2 {
    function setCallData(uint256 a) public {
    }


    function readArray() public view returns (uint256[] memory) {
        uint256 res;
        uint256[] storage a = new uint256[](2);
        for (uint256 i = 0; i <= 1; i += 1) {
            res [i] = address(this).balance;
