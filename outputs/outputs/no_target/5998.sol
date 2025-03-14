pragma solidity ^0.8.0;
import "Lib.sol";
contract Test is Lib {
    function log(Lib.MyStruct memory x) internal view returns (Lib.MyStruct memory) {
        return x;
    }
}
