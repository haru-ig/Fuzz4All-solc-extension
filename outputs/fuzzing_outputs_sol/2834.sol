pragma solidity ^0.8.0;
import "../Upgrader1.sol";
contract Upgrader3 is Upgrader1 {
    function migrate2() external {
        Upgrader2(_from).migrate(_from);
    }
}
contract Caller {
    function call_with_no_fallback() public returns (bytes memory) {
        Upgrader3.upgrade();
        return abi.encodeWithSelector(Upgrader3.receive.selector, uint256(0));
    }

    function call_with_fallback() public returns (bytes memory) {
        Upgrader3.upgrade();
        return abi.encodeWithSelector(Upgrader3.receive.selector, uint256(1));
    }
}
