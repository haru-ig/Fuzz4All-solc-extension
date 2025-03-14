pragma solidity ^0.8.0;
contract ExampleClass {
    uint[2] private arr;
    constructor(uint[2] memory data) {
        arr[0] = data[0];
        arr[1] = data[1];
    }
    function getArrAt(uint idx) public view returns (uint) {
        return arr[idx ^ 1];
    }
    function setArrAt(uint idx, uint val) public {
        arr[idx ^ 1] = val;
    }
    function getBytesAt(uint idx) public view returns (bytes1) {
        return uint2uint8(arr[idx]);
    }
    function setBytesAt(uint idx, uint val) public {
        arr[idx] = uint2uint8(val);
    }
    function uint2uint8(uint _uint) public pure returns(uint8) {
        return ((_uint >> 8) + (_uint>>16)) & 0xff;
    }
}
contract Test {
    ExampleClass d;
    uint[] memory array1;
    address user;
    constructor() {
        d.setArrAt(0, 10);
        d.setArrAt(1, -20);
        array1 = [uint2uint8(1), uint2uint8(2)];
        user = msg.sender;
    }
    function getUser() public view returns(address) {
        return user;
    }

    function setD(ExampleClass d_) public {
        d = d_;
    }
    function test(uint[] memory array2) public {
        for(uint i=0; i<array2.length; i ++) {
            if(d.getArrAt(i) >= 0) {
                d.setBytesAt(i, 1);
            }
            else {
                d.setBytesAt(i, 2);
            }
        }
        if(array1.length == 0 || array2.length == 0) {
            uint256[] memory test = new uint[](1);
            test[array1.length] = 2;
        }
    }
}
