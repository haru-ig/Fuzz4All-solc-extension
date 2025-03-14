pragma solidity ^0.8.0;
contract mutant {
    function y() public pure returns (uint256) {
        return mutation.y();
    }
}
contract mutation {
    function x() public pure returns (uint256) {
        uint256[] memory x = new uint256[](1);
        x[0] = 2;
        uint256[] memory x2;
        x2 = x;
        uint256[] memory x3 = new uint256[](2);
        x3[1] = 1;
        uint256[] memory x4 => new uint256[](3);
        x4[1] = 1;
        uint256[] memory x5[3] => new uint256[](4);
        x5[1] = 1;
        uint256 x6[] => new uint256[](10);
        x6[2] = 2;
        x6[1] = 1;
        uint256 x7 => new uint256[](30).set(19);
        x7 = new uint256[](4);
        uint256[] memory x8 = uint256[5]{1, 2, 3, 0, 4};
        uint256[] memory x9 = new uint256[](5);
        uint256[] memory x30[10] => new uint256[](6);
        x30[1] = 1;
        uint256[] memory x18 = uint256[](5 + 500);
        x18 = new uint256[](0);
        uint256[] memory x22 => new uint256[](42210);
        x22 = new uint256[1];
        x22 = uint256[](0);
        uint256[] memory x29;
        x29[1];
        uint256[][] memory a => new uint256[2][2](3, 10);
        a[0][1] = 1;
        uint256[][] memory a2 => (uint256[2][2](30
