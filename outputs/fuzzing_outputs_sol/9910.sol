pragma solidity ^0.8.0;
contract Fallback {
    uint public myVal;

    function fallback() public payable {
        myVal = new_(2);
        revert("fallback did never run");
    }



}
contract Caller {
    function c1() public view returns(uint256) {
        uint256 a1 = fallback() / 2;
        return 2 * a1;
    }
    function c21(uint i) public pure returns(uint256) {
        uint256 a2 = i / 2;
        return 2 * a2;
    }
    function c22(uint i) public view returns(uint256) {
        uint256 a2 = i / 2;
        return 2 * a2;
    }



    function c3() public view returns(uint256) {
        uint256 a31 = i / 2;
        uint256 a32 = fallback() / 2;
        return 2 * (a31 + a32);
    }
    function c41(uint i) public pure returns(uint256) {
        uint256 a33 = i / 2;
        uint256 a34 = fallback() / 2;
        return 2 * (a33 + a34);
    }
    function c42(uint i) public view returns(uint256) {
        uint256 a33 = i / 2;
        uint256 a34 = fallback() / 2;
        return 2 * (a33 + a34);
    }

    function c5() public {
        uint256 a51 = i / 2;
        uint256 a52 = fallback() / 2;

        try {
            _swapEther(address(0x0423F970568B91E202753AE14F179F1BB9377825), a51, a52);
        } catch {
            revert();
        }
    }
    function c43(uint i) public view returns(address) {
        if (i == 0) {
