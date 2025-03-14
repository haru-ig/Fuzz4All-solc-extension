pragma solidity ^0.8.0;
contract Test35 {
    uint256[] public a;
    function f() public pure returns (uint256) {
        uint256[6] memory a;
        uint256[3] memory a1;
        a1 = a;
        a = new uint256[](a.length + a.length);
        a = a;
        uint256 b = 0;
        for (uint256 i = 0; i < a.length + a.length; i++) {
            b = i;
        }
        return b;
    }
    function g() public pure returns (uint256) {
        uint256[2] memory a;
        for (uint256 i = 0; i < 2; i++) {
            a[i] = a[i + 1];
        }
        return a.length;
    }
}
pragma solidity ^0.8.0;
contract Test37 {
    A storage aa = A(keccak256(0));
    function readA() public view returns (A memory) {
        return aa;
    }
    function writeA(A calldata aa_) public {
        aa = aa_;
    }
}
contract Test39 {
    function test() public pure {
        bytes memory b;
        uint256 j = 0;
        for (j = 0; b.length < 100 * j; j++) {
        }



        require(b.length >= 2*j, "b.length too small");
        uint256 i = j + 1;
        for (; i < b.length; i++) {
        }
        require(i == b.length - 1, "i not at end of binary buffer");
