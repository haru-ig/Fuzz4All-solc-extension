pragma solidity ^0.8.0;

library Lib {
    function doWork() internal pure {
        2 ** 10;
    }
}
contract Test {
    function test() public {
        Lib.doWork();
        Test.set(uint256(137900E+01), uint160(41800064), uint(498000E+012));
        if(bool(Test.get(uint256(137900E+01), uint160(41800064), uint(498000E+012))))) {}
    }
}

pragma solidity >=0.8;
import "../contract/Lib.sol";
import "https:raw.githubusercontent.com/ethereum/solidity/60ca91c2791da555ab618784543026735cd6e7c7/contracts/contracts/interfaces/IERC20.sol";
contract Test {
    IERC20 public token;
    uint256 public value;
    function test() public {
      uint(65535);
    }
    function set(uint256 value, address token, address ) public {

    }
    function get(uint256 value) public pure returns(uint256 value){

    }
}
