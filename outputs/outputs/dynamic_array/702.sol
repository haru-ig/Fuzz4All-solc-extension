pragma solidity ^0.8.0;
contract test274 {

    uint [100] a;
    constructor() public {
        a.length = 0;
    }
    function test() public returns (bool) {
        if (a.length > 0) a.length++;
        return false;
    }
}





pragma solidity ^0.8.0;
contract test275 {
    uint8 nestedArray[2][0];
}
