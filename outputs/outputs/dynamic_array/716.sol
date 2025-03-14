pragma solidity ^0.8.0;
contract test276 {
    address  a = address(1);
    constructor() public {
        a[0] = address(this);
    }
    function test(uint _b) public {
        if (b == _b) b = 1;
        else {
            a[0] = address(this);
            a[b] = address(this);
            b = _b;
        }
    }
}

pragma solidity ^0.8.0;
contract test277 {
    uint  a = 0;
    uint b = 0;
    bytes32 _f1 = 0x0;
    bytes32 _f2 = 0xA96518EA84110EB57A5BFC7084F225D7784BF5C4AABCFAA0917E708A3698EFE9;
    bytes32[] _arr1 = new bytes32[](1);
    bytes32[] arr2 = new bytes32[](2);
    uint[] uintArr = new uint[](3);
    uint[] _uintArr = new uint[](4);
    constructor() public {
        _f1 = 0x6F315C6D5B94F723E0492298343EF8A95EC84F74055941D64062A9D86D8CA664;
        setArr(arr2, 0, address(this));
        uintArr[1] = a;
        uintArr[2] = b;
   }
    function test(uint _b) public {
        if ( b == _b ) {
            a = 1;
            b = 1;
        } else {
            setArr(_arr1, 0, address(this));
            _uintArr[0] = a;
            _uintArr[1] = b;
            uintArr = _uintArr;
            uint _arr321 = arr2[0];
            setArr( arr2, 0, address(this));
        }
    }
    function setArr(bytes32[] memory arr
