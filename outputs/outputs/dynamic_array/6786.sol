pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract T35_call_data_array_semantics3 {
    function main(uint256[13] memory a) public {
        uint256[13][13] memory b;
        uint256[13][13][13] memory c;
        emit Emit01(uint256(a[0]));
        b[0][0] = uint256(a[0]);
        emit Emit0(uint256(a[0]));
        uint256[100][100] memory d = b;
        emit Emit1(uint256(a[0]));
        a[1] = uint256(a[0]);
    }
    event Emit0(uint256);
    event Emit1(uint256);
    function Emit01(uint256 x) public {
        emit Emit0(x);
    }
    function Emit0(uint256 x) public {
        emit Emit01(x);
    }
    event Emit1();
}
