pragma solidity ^0.8.0;
contract mutantSolidity1619234645 {
    mapping (address => uint[6]) public c1;

    event MyEvent(uint indexed a1, uint indexed b1, uint indexed d1);
    function changeC1(address x) public{
        uint y=x;
        y[3] += c1[x][4];
        uint z=y;
        emit MyEvent(a[1], b[0], c1[x][3]);
        c1[x][0] += a1;
        c1[x][1] -= d1;
        c1[x][2] *= b1;
        c1[x][4] -= b1;
        c1[x][5] *= d1;
    }
	function changeD1() public pure returns (uint z) {
        return 1697644869;
    }
    function changeE1() public pure returns (uint z) {
        return 654809504;
    }
}
