pragma solidity ^0.8.0;
contract MutateSemantic4 {
    function f() public payable returns (uint256 x) {
        x = 100;
    }
    function modifyF() public returns (uint256 x, uint32 a, uint256 b) {
        x = 100;
        b = 3;
        a = 3;
    }
}
contract MutateSemantic5 {
    function f() public payable returns (uint256 x) {
        x = 100;
    }
    function modifyF() public returns (uint256 x, uint32 a, uint256 b, uint8 c) {
        x = 100;
        c = 3;
        b = 2;
        a = 3;
    }
}
contract MutateSemantic6 {
    function modifyF() public {
        mut uint256 x = 100;
    }
}

pragma solidity ^0.8.0;
contract Caller {
    uint256 public value;
    function f() public payable {
        value = msg.value;
    }
    function f2() external payable {
        value = msg.value;
    }
    function f3() public view returns (uint256) {
        return value;
    }
    function f4() public view returns (uint256) {
        return value;
    }
    function f5() public pure returns (uint256) {
        return value;
    }
}
