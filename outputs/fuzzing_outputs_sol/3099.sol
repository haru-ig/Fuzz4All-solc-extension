pragma solidity ^0.8.0;
contract Example12 is Example12 {
    uint256 num1;
    receive() external pure {
        num1 += 1;
    }
}
struct Storage1 {
    uint128 num1;
    uint256 num2;
    bytes2 data;
}
contract Example13 is Example12 {
    uint256 num1;
    receive() external onlydata {
        num1 += 1;
    }
    function getStorage1() public view returns (Storage1 storage) {
        return (Storage1(0x7e12d801a730b3b0ef87f0ef71e11a3036a60230));
    }
}
contract Example14 is Example13 {
    uint128 num;
    uint256 num1;
    function getStorage1() public pure returns (Storage1 storage) {
        return Storage1(0x7e12d801a730b3b0ef87f0ef71e11a3036a60230);
    }
}
contract Example15 {
    uint128 num;
    uint256 num1;
    receive() external {
        num += 1;
    }
    receive() external {
        num1 += 1;
    }
    fallback() external {
        num += 1;
    }
    fallback() external {
        num1 += 1;
    }
}

pragma solidity ^0.8.0;
contract Example16 {
    uint128 num;
    function fun1(uint256 arg1) public pure {
        num += arg1;
    }
    receive() payable external pure {
        num += 1;
    }
}
contract Example17 {
    uint256 num;
    function fun2(uint arg1) public pure {
        num += arg1;
    }
    receive() payable external pure {
        num += 1;
    }
    receive() payable external pure {
        num += 1;
    }
}
contract Example18 {
    uint256 num;
    receive() payable external {
        num += 1;
    }
    receive() payable external {
        num += 1;
    }
    receive() payable external {
        num += 1;
    }
}
contract Example19 {
    uint256 num;
    uint256 num2;
    uint256 num3;
    receive() payable external {
        num += 1;
    }
    receive() payable external {
        num2 += 1;
    }
    receive() payable external {
        num += 1;
    }
}
contract Example20 {
    uint256 num;
    uint256 num2;
    uint256 num3;
    bytes memory data0;
    bytes memory data1;
    bytes memory data2;
