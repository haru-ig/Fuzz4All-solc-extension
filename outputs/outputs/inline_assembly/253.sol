pragma solidity ^0.8.0;
contract E5
{
    bytes4 sig1;
    bytes4 sig2;
    uint _x = 50000000;
    uint _z;
    uint _y;


    struct Foo {
        uint256 count;
    }

    struct Bar {
        uint256 count;
    }

    function test() public returns (uint256) {
        if (sig1(keccak256(abi.encodePacked(_x, E5.subtract(_x))))) {
            _z = subtract(_x);
            emit Foo(_z.count);
            Bar(_z.count);
        }
    }

    function subtract(uint z) private pure returns (uint256) {
      return z - _x;
    }

    function sig1(bytes4 s) private pure returns (bytes4 sOut) {
        sOut = s;
    }

    function sig2() private pure returns (bytes4 sOut) {
       sOut = bytes4(keccak256(abi.encodePacked("0x12345678000000000000000000000000")));
    }
}
pragma solidity ^0.8.0
contract E52
{
     function subtract(uint256 _y) public returns (uint256){
        return 1;
    }
}
