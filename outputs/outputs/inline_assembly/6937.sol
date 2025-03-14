pragma solidity ^0.8.0;
contract OptimizelyExample78_solded {


    constructor(paramCounter_, byte paramMinIncrement_, byte paramMaxIncrement_) {
        counter = paramCounter_;

        _increment(paramMinIncrement_, paramMaxIncrement_, uint128(paramCounter_));
    }

    function _increment(byte _minIncrement_, byte _maxIncrement_, uint128 _counter) private {



        assembly {

            let memoryBeforeIncrement := mload(0x40)

            mstore(0x40, add(memoryBeforeIncrement, div(mul(mul(mload(0x40), sub(_minIncrement_, 1)), _maxIncrement_)), 1)))
        }
    }

    function setCounter(int128 _counter) public {
        counter = _counter;
    }
}


pragma solidity ^0.8.0;
contract OptimizelyExample78_solded {
    enum Status_t {
        Status_Stopped,
        Status_Running
    }

    using SafeMath for uint256;
    using Address for address;

    struct State_t {
        uint256 data;
        uint256 minIncrement;
        uint256 maxIncrement;
        address accountCreator;
        Status_t runStatus;
    }

    uint128 private constant oneSecond = 10 ** 18;
    uint128 constant public constant INITIAL_DATA = 10;
    uint256 public constant MINIMUM_INCREMENT = 1;
    uint256 public constant MAXIMUM_INCREMENT = 255;



    enum RunStatus_t {
        Status_Stopped,
        Status_Running
    }

    using RunStatus_t for RunStatus_t;


    State_t private _state;
