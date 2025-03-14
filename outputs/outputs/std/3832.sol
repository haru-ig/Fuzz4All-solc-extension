pragma solidity ^0.8.0;
contract Convert {
    function unsignedStringToUints(string memory x) internal pure returns (uint256) {
        bytes memory str = bytes(x);
        uint256 n = 0;
        for(uint i; i < str.length; i++)
            n *= 10;
        return bytes2uint(str);
    }
    function bytes2uint(bytes memory b) internal pure returns (uint256) {
        uint256 n = 0;
        for(uint i; i < b.length; i++)
            n *= 256 ** (b.length - i - 1);
        uint256 k = 0;
        bytes1 b0;
        for(i; i < b.length; i++) {
            b0 = b[b.length - i - 1];
            n += bytes2uint(bytes1.decode(b0));
            unchecked{ n *= 256; }
            k += 1;
        }
        return n * 2**k;
    }
}
contract Array {
    uint256[] arr;
    function push(uint256 x) public pure {
        arr.push(x);
    }
    function pop() public pure {
        arr.pop();
    }
    function findMin() public view returns (uint256) {
        uint256 min = arr[0];
        uint256 i;
        uint256 j;
        for (i = 0; i < arr.length; i++){
            for (j = i + 1; j < arr.length; j++){
                if (arr[i] < arr[j]){
                    min = arr[i];
                    i = j;
                }
            }
        }
        return min;
    }
    function findMax() public view returns (uint256) {
        uint256 min = arr[0];
        uint256 i;
        uint256 j;
        for (i = 0; i < arr.length; i++){
            for (j = i + 1; j < arr.length; j++){
                if (arr[i] > arr[j]){
                    min = arr[i];
                    i = j;
                }
            }
        }
        return min;
    }
}
contract Division {
