pragma solidity ^0.8.0;
contract G9d {
    dynamic public arr;
    dynamic public c;
    constructor(uint32 _c) internal {
        c = 1;
        arr[1] = arr[0];
        c = 3;
        c += _c;
    }
    function g() public  returns(uint256){
        if (c == 1) {
            c = 0;
            arr[0] *= 2;
        }
        return arr[0];
    }
}
pragma solidity ^0.8.0;
contract G9d {
    bytes32[5] private arr;
    constructor(uint32 _c) internal {
        c = 1;
        arr[0] = bytes32(uint256(uint32(uint256(_c) / 3) + uint32(uint256(_c) % 3))));
    }
}
