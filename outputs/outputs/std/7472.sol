pragma solidity ^0.8.0;
contract Mutate12 {
    function mutateFromFirst(uint256[2][2] memory array) public view returns (uint256) { return array[0][0];}
    function mutateFromSecond(uint256[2][2] memory array) public pure returns (uint256) { return (array[1][1]);}
    function mutateFromThird(uint256[2][2] memory array) public pure returns (uint256) { return (array[0][1]); }
    function mutateFromFourth(uint256[2][2] memory array) public pure returns (uint256) {
        for (uint256 i = 0; i < 16; i++) { array[1][1] += uint256(1 << i); }
        return (array[1][1]);
    }
    function main(uint256) private pure returns (uint256) { return 1; }
}
pragma solidity^0.8.4;
import "../test/Fixture3.sol";
contract Test7 is Fixture3 {
    function test() public pure override returns (uint256) {
        address a = addr1; uint256 a1 = uint256(a); uint256 b1 = 20; (uint256 b1, uint256 c) = (a1, b1); return b1;
    }
}
