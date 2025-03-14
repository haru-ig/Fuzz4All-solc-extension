pragma solidity ^0.8.0;
contract F is A {
    function h(uint256 i) public returns (uint256) {
        d = i - A.g();
        return uint256(address(this).balance);
    }
    function j() public returns (uint256) {
        d = 0x1000 - A.g();
        return uint256(address(this).balance);
    }
    function k() public returns (uint256) {
        d = A.g() - uint256(address(this).balance);
        return uint256(address(this).balance);
    }
}
contract E is B, F {

}
contract G is B, A {
}
contract H is B {
    function i() public returns(uint256) {
        return 0;
    }
}
