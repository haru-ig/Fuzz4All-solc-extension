pragma solidity ^0.8.0;
contract Test37 {
    uint[] public arr;
    uint[] public oldArr;
    uint internal arr2;
    constructor(uint size1) {
        oldArr = arr;
        setArrSize1(size1);
        arr = arr2;
        arr2 = oldArr;
    }
    modifier setOnlyLast{
        require(arr.length == 1);
        _;
    }
    function setArrSize1(uint256 sz){
        oldArr[1] = arr[1];
        oldArr[arr.length] = arr[arr.length];
        setArrSize12(0);
    }
    function setArrSize12(uint256 sz) internal {
        bufsize = 2**64;
        uint256 buf = 0;
        for (uint i = 0; i < 2**64; i+=8) {
            bytes32 hash = keccak256(abi.encodePacked(i));
            if (keccak256(abi.encodePacked(buf, hash)) == buf) {
                buf = keccak256(abi.encodePacked(i, hash));
            } else {
                buf |= 1<<(i>>>3);
            }
            bytes memory bytes1 = abi.encode(uint(0xff000000));
            bytes32 bytes2 = sha3(abi.encodePacked(buf1, i));
            require(keccak256(abi.encodePacked(i, bytes1, bytes2)) == bytes2);
        }
        bufsize = buf;
        require(bufsize > 0);
      }
}
