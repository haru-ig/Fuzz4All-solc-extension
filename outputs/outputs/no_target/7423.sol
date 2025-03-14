pragma solidity ^0.8.0;
contract Test {
  function test2(uint256 param) public pure returns(bool) {
    param++;
    return param == 1.0;
  }
}

pragma solidity ^0.8.0;
contract Test {
  uint256 public constant constant1 = 1.0;
  uint256 internal constantStorageValue = 2.0;
  function test3(uint256 param) public pure returns(bool) {
    return storageValue[storageValue.length + 1] == param;
  }
}

pragma solidity ^0.8.0;
contract SafeMath {}
import "./SafeMath.sol";
contract Test {
  using SafeMath for uint256;
  uint256 constant constant1 = 1.0;
  function test4(uint256 param) public pure returns(bool) {
    return constant1.add(param) == 1.0;
  }
}

pragma solidity "^0.8.0";

contract Test {
    using SafeMath for uint256;
    uint public constant constant1 = 1.0;

    function test5(uint256 param) public pure returns(uint256) {
        return constant1.add(param).sub(1);
    }

    function test6(uint x, uint constant constant2) public pure returns(uint64) {
        return constant1.add(x).mul(constant2).div(1).add(1);
    }
}

pragma solidity "^0.8.0";

enum Direction {
    UPWARD,
    DOWNWARD,
    RIGHTWARD,
    LEFTWARD
}
contract Test {
    using SafeMath for uint256;
    Direction direction;
    event Event(uint256 param);
    function test7(uint256 param) public pure returns(bool) {
        direction = Upward;
        emit Event(param);
        return false;
    }
}
pragma solidity 0.8.0;
contract Test {
    using SafeMath for uint256;
    uint256 constant constant1 = 1.0;
    uint256 constant constant2 = 2.0;
    uint256 constant constant3 = 3.0;

    uint256 constant constant4 = constant1.add(constant2);
    uint256 constant constant5 = constant1.add(constant3);

    function constantMul(uint x, uint constant multiply) public pure returns(uint256) {
        return x.mul(multiply);
    }

    function test7(uint256 param) public pure returns(uint256) {
        return constant2.mul(constant5).div(constant4).add(constant1).sub(2.*constant2).add
