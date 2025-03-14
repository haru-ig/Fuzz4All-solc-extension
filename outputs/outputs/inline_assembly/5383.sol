pragma solidity ^0.8.0;
contract Qc {
    uint internal constant Init = 17;
    uint internal rBc;
    uint public rBc2;
    constructor () public {
        rBc = Init;
        require(rBc == Init);
        rBc = 1267;
        rBc += Init;
        for (uint x = 0; x < 10000; x++) {
            rBc = rBc + Init;
            require(rBc == rBc + Init);
        }
    }
}

pragma solidity ^0.8.0;
contract Qc {
    uint internal constant Init = 17;
    uint internal rBc;
    uint public rBc2;
    constructor () public {
        rBc2 = Init;
        require(rBc2 == Init);
        rBc2 = 1267;
        rBc2 += Init;
        for (uint x = 0; x < 10000; x++) {
            rBc2 = rBc2 + Init;
            require(rBc2 == rBc2 + Init);
            rBc += Init;
        }
    }
}
