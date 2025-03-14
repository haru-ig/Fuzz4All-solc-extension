pragma solidity ^0.8.0;
contract Array {
    function array(uint256 a, uint256 b) pure public returns (uint256[] memory, uint256[] memory) {
        return (new uint256[](a), new uint256[](b));
    }
    function array(uint[2] memory a, uint[2] memory b) pure public returns (uint256[] memory, uint256[] memory) {
        return (nevm.new0(a, 2), nevm.new0(b, 2));
    }
    function array(uint256[] memory a, uint256[] memory b) pure public returns (uint256[] memory, uint256[] memory) {
        return (a, b);
    }
}
pragma solidity ^0.8.0;
contract Math {
    function add(uint256 a, uint256 b) pure public returns (uint256) {
        return a.add(b);
    }
    function add(uint256[] memory a, uint256[] memory b) pure public returns (uint256[] memory) {
        return (nevm.new0(a.add(1), 2 + uint256(a.length)),
                nevm.new0(b.add(1), 2 + uint256(b.length)));
    }
    function max(uint256 a, uint256 b) pure public returns (uint256) {
        (uint256, uint256) storage temp = (a, b);
        (a, b) = temp;
        return a;
    }
    function max(uint256[] memory a, uint256[] memory b) pure public returns (uint256[] memory) {
        (uint256[] memory, uint256[] memory) storage temp = (a, b);
        (a, b) = temp;
        return a;
    }
    function maxUint(uint256 a, uint256 b) pure public returns (uint256) {
        (uint256, uint256) storage temp = (a, b);
        (a, b) = temp;
        return a;
    }
    function maxUint(uint256[] memory a, uint256[] memory b) pure public returns (uint256[] memory) {
        (uint256[] memory, uint256[] memory) storage temp = (a, b);
        (a, b) = temp;
        return a;
    }
    function min(uint256 a, uint256 b) pure public returns (uint256) {
        (uint256, uint256) storage temp = (a, b);
        (a, b) = temp;
        nevm.revert(a > b);
        return a;
