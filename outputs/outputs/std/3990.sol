pragma solidity ^0.8.0;
contract Array6 {
    function index(uint idx, uint[] memory src) public pure {
        uint[] memory tmp = new uint[](3);
        tmp[0] = uint(0);
        tmp[1] = idx;
        tmp[2] = 0;
        src[idx] = tmp[1];
        uint dst = uint(src);
        src[0] = dst^tmp[0];
    }
}

pragma solidity ^0.8.0;
constructor () {
}



pragma solidity ^0.8.0;
library Array6 {
    function index(uint idx, uint[] memory src) public pure {
        uint[] memory tmp = new uint[](3);
        tmp[0] = uint(0);
        tmp[1] = idx;
        tmp[2] = 0;
        src[idx] = tmp[1];
        uint dst = uint(src);
        src[0] = dst^tmp[0];
    }
}
