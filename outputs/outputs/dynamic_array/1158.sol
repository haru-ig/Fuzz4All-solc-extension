pragma solidity ^0.8.0;

contract ReentrancyGuardBase {


    uint256 private constant _NOT_ENTERED = 1;
    uint256 private constant _ENTERED = 2;

    uint16 private _status;


    modifier onlyWhenNotEntered() {
        require(_status!= _NOT_ENTERED);

        _;

        _status = _NOT_ENTERED;
    }


    modifier onlyWhenEntered() {
        require(_status!= _ENTERED);

        _status = _ENTERED;

        _;

        _status = _NOT_ENTERED;
    }


    modifier onlyIfConditionNotEntered() {
        uint8 status = _status;
        require(status!= _NOT_ENTERED);

        _;

        require(status == _NOT_ENTERED);
    }


    modifier onlyIfConditionEntered() {
        uint8 status = _status;
        require(status!= _ENTERED);

        _;

        require(status == _ENTERED);
    }
}
