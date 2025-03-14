pragma solidity ^0.8.0;
contract Test {
    function f() public view returns (uint256) {
        uint256[] memory a;
        a = TestLib.toUint256Array(1,2);
        uint256 b = a.testUint256();
        uint256 c = a.testUint256();
        uint256 d = TestLib.testUint256(1,2);
        uint256 e = TestLib.testUint256(1,2);
        return b+c+d+e;
    }
    function testUint256(uint256[] memory a, uint256 b) private returns (uint256) {
        return a.testUint256();
    }

    function testUint256Array(uint256[][] memory a, uint256 b) private returns (uint256) {
        return a.testUint256();
    }
}


pragma solidity ^0.8.0;



contract TestLib {
    function test2(uint256[][] memory a, uint256 b) private returns (uint256) {
        return a.testUint256();
    }
    uint8 public constant testUint256 = 7;
    function toUint256Array(uint256 d) public pure returns (uint256[] memory t) {
         t = new uint256[](1);
    }
}
