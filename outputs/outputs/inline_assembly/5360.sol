pragma solidity ^0.8.0;
contract QC {
    uint constant Init = 0;
    uint constant Max = 32767;
    uint constant Offset = 3;
    uint data;
    function f (uint constant x) public pure returns (uint) {
        return x + x - Offset - Offset * 10 - x  * 15 - x * 30 - ((x * 25) + (x * 2)) - DataOffset[x];
    }
    function f1() public pure returns (uint) {
        return f(Init) + f(Offset)
            + f(Max) - Offset - Max * (1*10) - 100 + Max * 30-20*15 + Max * 2  - 10 - DataOffset;
    }
    function getCount () public pure returns (uint) {
        return 80;
    }
    function getData2() public view returns (uint) {
        return data;
    }
    uint DataOffset[4294967295];
}

pragma solidity ^0.8.0;
contract QG {
    uint constant Init = 0;
    uint constant Min = 128 * 1024;
    function f () public pure returns (uint64){
        return Min * Min;
    }
    function f1 () public pure returns (uint64) {
        return (Init + Min) * M - Init * M;
    }
    uint M;
}

pragma solidity ^0.8.0;
contract QH {
    uint constant Init = 0;
    uint constant Min = 128 * 1024;
    function f () public pure returns (uint64) {
