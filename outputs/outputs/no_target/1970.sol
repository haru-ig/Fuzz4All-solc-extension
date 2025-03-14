pragma solidity ^0.8.0;
contract CompatibleSematic {
    uint x;
    function f() public {
        unchecked {
             x = x.checkedSub(1);
        }
    }
}


pragma solidity ^0.8.0;
contract Compatibility {

}
