pragma solidity ^0.8.0;

import "./B.sol";
import "./A.sol";
contract ContractA {
    constructor (uint _x) {
        x = _x;
    }
    function test1() public view {
        uint _test2;
        (, x, ) = A(address(this)).test2();
        require(x > _test2, "");
    }
    function test2() public view returns (uint y, uint z) {
        uint256 x;
        (x, ) = (uint256(address(this)).y, uint256(address(this)).z);
        uint test3;
        (, y, test3) = A(address(this)).test3(x);
        require(y > _test3, "");
        uint256 _test5;
        (x, _test5) = A(address(this)).test4(x);
        require(x > _test5, "");
    }
    function test3(uint x) public view returns (uint y, uint z) {

        uint256 y;
        (, y, ) = A(address(this)).test3(x);
        require(y > 0, "");
        uint256 test4;
        (y, test4) = A(address(this)).test3(x);
        require(z > test4, "");
    }
    function test4(uint x) public view returns (uint256 y) {
        uint256 z;
        (, y,, z) = A(address(this)).test3(x);
        require(x > z, "");
    }
}
