pragma solidity ^0.8.0;
interface ITime {
    function currentBlock() external view returns (uint256);
    function currentTime() external view returns (uint256);
    function currentUnixTime() external view returns (uint256);
    event NewTime(uint256 time);
}

pragma solidity ^0.8.0;
import "./IERC20Token.sol";
import "./ITime.sol";
contract Counter is IERC20Token, ITime{
    uint256 public counter;

    constructor (uint256 _value) {
        counter = _value;
    }

    function totalSupply() public view returns(uint256 ) {
        return counter;
    }

    function balanceOf(address _addr) public view returns(uint256) {
        return IERC20Token(counter).balanceOf(_addr);
    }
    function increaseTime(uint256 _value) internal view {

if (_value == 0){return;}

        require(currentUnixTime() + _value >= currentUnixTime(),
            "Counter.IncreaseTime: Current time is greater than or equal to the input value");

        uint256 secondsPassed = currentUnixTime() + _value - currentUnixTime();

        counter += secondsPassed;
    }

    function currentTime() public view returns(uint256 ) {return currentUnixTime();}

    function currentUnixTime() public view returns(uint256) {
      uint256 secondsPassed = seconds();
      uint seconds = secondsPassed.div(uint(1000000000));
      return seconds.div(uint(1000000000000000000));
    }

    function seconds() public view returns(
