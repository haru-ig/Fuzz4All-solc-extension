pragma solidity ^0.8.0;
contract A {
    function f() public payable returns (uint256){
        (uint256)x = -2147483648;
        return x;
    }
    function g() public view returns(uint256){
        (uint256)-2147483647 -1;
        (uint256)x = -1e31;
        return x;
    }
    function h() public {
        (uint256)k = (uint256)-1;
        (uint256)(-1e31) + k;
        (uint256)((-1e31) - k);
        (uint256)(uint256)x + 1;
    }
}
