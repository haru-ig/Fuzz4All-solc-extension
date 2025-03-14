pragma solidity ^0.8.0;

import "../IBytesStorage.sol";
contract TestBytesStorage is IBytesStorage {
    function doSetBytes(uint256 a, bytes3 a_, bytes3 b_) external {
        bytes memory _b = bytes(b_);
        bytes3 b = _b[0];
        bytes3 b_ = _b[7];
        bytes4 c4 = a;
        bytes32 c32 = a;
        address caddr = a;
        bool8 b8;
        b = _b[(int132(40))];
    }
    function doGetBytes(uint256 a, bytes3 a_, bytes3 b) external view returns(bytes3){
        bytes memory _b = bytes(b);
        bytes3 b = _b[0];
        bytes3 b_ = _b[1];
        bytes4 c4 = a;
        bytes32 c32 = a;
        address caddr = a;
        bool8 b8;
        b = _b[(int132(42))];
        b_ = _b[(int132(48))];
        b8 = _b[(int132(11))];
    }
}
