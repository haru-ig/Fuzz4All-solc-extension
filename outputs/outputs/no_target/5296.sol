pragma solidity ^0.8.0;
contract MutatedExamples7 {
    function mutated1(address, uint) public returns(uint y) {

        y = 500*(x-100);
    }
    function mutated2(address, uint) public returns(uint, uint, uint) {

        uint y1 = 500*(x-100);
        uint y2 = 100*(x-100);
        uint y3 = 5*(x-100);
        return (y1, y2, y3);
    }
    function mutated3(address, uint) public returns(uint y) {
        if (x < 0)
        {

            return 500*(x-100);
        }
        return 500;

    }
}

pragma solidity ^0.8.0;
contract MutatedExamples8 {
    function mutated1(address x) public returns(uint y1, uint z1, uint y2, uint z2) {
        uint y0 = uint(x);
        if (y0 > 0)
        {

            uint y1temp = 500*(y0-100);
            y1 = y1temp;
            return;
        }

        uint y2temp = 500*(y0-100);
        y2 = y2temp;
        uint z2temp = 5*(y0-100);
        z2 = 100*(y0-100) + z2temp;
    }
}

pragma solidity ^0.8.0;
contract MutatedExamples9 {
    function mutated1() public returns(uint y, uint z, uint y4) {
       uint y0 = uint(x);
       return (y0 + 100, x, y0);
    }
}

pragma solidity
