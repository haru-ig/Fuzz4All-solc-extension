pragma solidity ^0.8.0;
interface IFallback {
    function f1() external;
    function f2(uint8 arg) external;
}

contract Caller is IFallback {

    address payable addr;
    constructor(address payable _addr) {
        addr = _addr;
    }


    function f3(uint256 a, uint256 b) external {
        (bool success, ) = addr.call{value: address(this).balance}("");
        require(success);
        uint256 c;
        (c, ) = addr(c).call{value: a}(new bytes(0));
    }


    function f4(uint256 c) public {
        (bool success, bytes memory returnData) = addr.call{value: c}("");
        require(success && returnData.length > 0);
    }
}
