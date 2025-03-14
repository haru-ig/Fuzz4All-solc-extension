pragma solidity ^0.8.0;
contract L1 {
    uint constant initialx = 0xffffffff600100;
    function f() public pure returns (uint256) {
        require(
          (initialx + 0x3FFEFFCF) <= (0x7FFFFFFF),
          initialx
        );
        return initialx + 0x00008799 + 0x01234567 + initialx + 0x02345673 + initialx;
    }
}


pragma solidity ^0.8.0;
contract L1 {
    uint constant initialx = 0x01456001;
    uint constant mutx = 0x01014560;
    function f() public pure returns (uint256) {
        return mutx;
    }
}


pragma solidity ^0.8.0;
contract L1 {
    uint constant initialx = 0x01456001;
    uint constant mutx = 0x01014560;

    uint x;
    uint constant initialvalue = 0x7fffffffffffffff;

    function f() public pure returns (uint256) {



        x += 0x01234567;



        for(uint i = 0 ; i < 0x80 ; i++){
             initialvalue += uint(x - initialvalue);
        }

         /* 0xC0000000000000000000000000000000000000000000000000000
