pragma solidity ^0.8.0;
contract mutator1200{
    bool isInitialized;
    uint256 _h;
    uint8 _w;
    enum State {
        Idle, Playing
    }
    assembly constructor({_h, _w}) { emit Initiate(_h, _w); isInitialized := true; }
    function IsInitialized() external view returns (bool){ return isInitialized; }
    function Increment() public {
        isInitialized;
        if(state == Playing){

        emit Play_Increment(address(this));
    }
    }
    event Initiate(uint256 h, uint8 w);
    event Play_Increment(address sender);
    State state;
    constructor() {
        state = State.Idle;
    }
}
