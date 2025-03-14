pragma solidity ^0.8.0;
contract Modul{
    bool b;
    function test() public pure returns(uint){
        return b;
    }
}

pragma solidity ^0.8.0;
contract Modul{
    bool b;
    function test() public pure returns(uint){
        return 0x12345678;
    }
}

pragma solidity ^0.8.0;
contract Modul{
    uint constant test = 1000;
    uint constant mod = 2;
    function test() public pure returns (uint) {
       return test+test%mod;
    }
}

pragma solidity ^0.8.0;
contract Modul{
    bytes memory mem;
    function test() public pure returns(uint, uint) {
        for (uint x = 0; x < 10; x < test; x++) {
            mem[x] = x;
        }
        return test, mem[10];
    }
}

pragma solidity ^0.8.0;
contract Modul{
    uint constant test = 1000;
    uint constant size = 16;
    uint[] memory mem;
    function test() public pure returns (uint, uint, uint[]) {
        uint a;
        uint b;
        for(uint a = 0; a < test; a++){
            mem[a] = a;
        }

        uint c;
        for(uint b = test+1; b < test+size; b++){
            mem[b] = b;
        }

        return test, c, mem;
    }
}

pragma solidity ^0.8.0;
contract Modul{
    uint test1;
    uint test2;
    function test() public pure returns (uint) {
        uint test1 =
