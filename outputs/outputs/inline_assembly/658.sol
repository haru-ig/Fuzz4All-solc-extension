pragma solidity ^0.8.0;
contract Mutator3 {
    Mute[] storage Mutes = [
        Mute("12", 20),
        Mute("14", 25)
    ] ;
    constructor() public {
        Mutes[2].muteUntil(10);
    }
    function testMethod() public view returns(int, address) {
        int b4 = Mutes[1].countRemainingMutes();
        int b9 = Mutes[2].countRemainingMutes();
        Mute m = Mutes[0];
        uint value = m.getValue();
        int b16 = m.isMuted();
        int b32 = m.getMutetime();
        m = Mutes[0];
        uint val = m.getValue();
        m = Mutes[1];
        uint val2 = m.getValue();
        m = Mutes[2];
        uint val3 = m.getValue();
        return(val, val2);
    }
}
