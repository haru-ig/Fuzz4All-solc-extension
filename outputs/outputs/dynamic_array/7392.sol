pragma solidity ^0.8.0;
contract Test33 {
    uint256 dynArr[1];
    uint public i;
    uint[] public dynArr;
    function modifyTest() public {
        dynArr[0].i = dynArr.length + 1;
    }
}


pragma solidity ^0.8.0;

contract Test34 {
    uint[] public dynArr;
    uint i;
    function modifyTest() public {
        dynArr.push(i = dynArr.length || 1);
    }
}
pragma solidity >=0.7.3;



pragma solidity >=0.7.0;

contract Test35 {
    bytes32 bytes32Value;
    function f() public pure() view returns (bytes32) {
        return bytes32(0x5555555555555555 + bytes32(0x5555555555555555L));
    }
    mapping(bytes32 => uint) mappingValue;
    function d() public pure() returns (uint) {
        return bytes32(mappingValue[mappingValue[bytes32Value]]);
    }
}
