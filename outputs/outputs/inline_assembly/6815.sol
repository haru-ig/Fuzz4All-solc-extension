pragma solidity ^0.8.0;
contract MixedContactsExample444 {
    struct MixedContactsExample444Data {
        uint x;
        uint y;
    }



    MixedContactsExample444Data data;
    constructor() {

        _initializeData(1);
    }


    function setX(uint newX) public {
        data.x = newX;
    }


    function getX() public view returns (uint) {
        return data.x;
    }



    _privateInitializeData(uint _newX) internal {
        data.x = _newX;
    }




    _privateInitializeData(uint _newX) private {
        data.x = _newX;
    }


    function _changeXValue(uint _newX) private {

        data.x = _newX;
    }

    modifier shouldAlwaysBeUpdated {

        _;
    }

    function incrementX() public shouldAlwaysBeUpdated {
        data.x += 1;
   }
}
