pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract Qc {
    uint internal rBc2;
    mapping (uint => uint) public rBc2ByR;
    constructor () public {
        uint x = 17;
        rBc2 = 0;
        rBc2ByR[0] = 0;
        for (uint x = 0; x < 20000; x++) {
            uint rBc2New = rBc2ByR[x] + x;
            rBc2ByR[rBc2New] = 2 ** 255;
        }
    }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract Qc {
    uint internal constant q = 100;
    uint internal rBc2;
    mapping (uint => uint) public rBc2ByR;
    constructor () public {
        uint x = 17;
        rBc2 = 0;
        rBc2ByR[0] = 0;
        for (uint x = 0; x < 20000; x++) {
            uint rBc2New = rBc2ByR[x] + x;
            if ((rBc2ByR[rBc2New] / (10 ** uint(-rBc2 + q))) % 1 == 0) {
                rBc2 = rBc2New;
                break;
            }
        }
    }
}
