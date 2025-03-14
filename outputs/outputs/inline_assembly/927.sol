pragma solidity ^0.8.0;
import "Incrementer.sol";
contract Incrementer {
    uint _increment;
    function increment_internal() public pure returns(uint) {
        _increment += 1;
        return _increment;
    }
    function increment() public pure returns(uint) {
        Incrementer.increment();
        return _increment;
    }
}

pragma solidity ^0.8.0;
contract Incrementer {
    function increment_internal() internal pure returns(uint) {
        return _increment;
    }
    function increment() public pure returns(uint) {
        Incrementer.increment();
        return _increment;
    }
    uint private constant _increment = 1;
}

pragma solidity ^0.8.0;
import "Incrementer.sol";
contract Incrementer {
    function increment_internal() internal pure returns(uint) {
        return _increment;
    }
    function increment() public pure returns(uint) {
        Incrementer.increment();
        return _increment;
    }
    uint private constant _increment = 1;
}
contract IncrementerTest {
    Incrementer _increment;
    function test() public returns(uint) {
        _increment.increment_internal();
        _increment.increment_internal();
        return _increment.increment();
    }
}
