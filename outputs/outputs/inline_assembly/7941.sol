pragma solidity ^0.8.0;
contract L75Fixed {
    uint[6] x;
    function sneaky() public view returns(uint[]) {
        uint[4] memory b = [x[3], x[2], x[0], x[1]];
        if (true)
        do {
            return b;
        } while(false);
        return [];
    }
}
