pragma solidity ^0.8.0;
contract Test49 {
    bytes32 private constant BYTES32 = 0x1337c6640c33505ab7c24658b6a7820f905e2fc61c7cd066ad438493bffc131e;
    bytes32[12] private constant BYTES32VAR = [1, 2, 3, 4, 5];
    function test1() public view returns (uint256, bytes32[]) {
        (uint256 len, bytes32[] memory a) = test2(BYTES32VAR);
        a[a.length - 1] = BYTES32;
        return (2, a);
    }
    function test2(bytes32[] memory b) public view returns (uint256, bytes32[]) {
        return (3, b);
    }
}
