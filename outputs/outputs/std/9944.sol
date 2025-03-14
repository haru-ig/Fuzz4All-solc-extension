pragma solidity ^0.8.0;
contract Semantics {
    int public intValue;
    uint public uintValue;
    address public addressValue;
    address[] public arrayValue;
    address public address2;
    uint public uint2;
    function sem(int i, int j, int k, uint[] memory arr) public view {
        intValue = i;
        uintValue = j;
        uint2 = k;
        addressValue = msg.sender;
        for (uint2 idx = 0; idx < arr.length; idx += 1) {
            uint2 arrValue = arr[idx];
            emit SemanticsValue(uint2, arrValue, addressValue);
        }
    }
    uint public uint2Value;
    constructor(uint20 val) public {
        uintValue = val;
        uint2 = uintValue;
        uint2Value = uintValue;
        addressValue = msg.sender;
    }
    event SemanticsValue(uint20 indexed uint, uint20 indexed uint2, address indexed addr);
}

pragma solidity ^0.8.0;
contract Semantics {
    uint public constant UINT20 = type(uint20).max;
    uint20 public constant UINT20Value = uint20(UINT20.sub(1));
}
